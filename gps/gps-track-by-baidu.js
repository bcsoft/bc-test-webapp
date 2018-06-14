jQuery(function () {
  var ak = "uGEXvK5g7VNw5duKSqHU9QiG";
  // 1. 获取轨迹数据
  console.time("load 'gps.json'");
  var gps;
  jQuery.getJSON("gps.json", function (data) {
    gps = data;
    console.log("gps=%o", gps);
    console.timeEnd("load 'gps.json'");
    // 百度对外接口的坐标系并不是GPS采集的真实经纬度，需要通过坐标转换接口进行转换
    // http://malagis.com/baidu-maps-api-map-coordinate-conversion.html
    // 将gps坐标转换为百度坐标 (百度限制每次最多转换100个坐标)
    // 原始的坐标数据是 GPS 设备获取的角度坐标
    // http://developer.baidu.com/map/changeposition.htm
    var url = "http://api.map.baidu.com/geoconv/v1/?ak=" + ak + "&callback=?&from=1&to=5&coords=";
    var g_coords = [], c_coords;
    for (var i = 0; i < gps.length; i++) {
      if (i % 100 == 0) {  // 每组的开始处 (最多100条一组)
        c_coords = [];
        g_coords.push(c_coords);
      }
      c_coords.push(gps[i].longitude + "," + gps[i].latitude);
    }
    console.info("gps points.len=%d", gps.length);
    //console.debug("gps=%o, g_coords=%o", gps, g_coords);
    // 使用eval解决$.when不能传数组参数的问题
    var codeString = "jQuery.when(";
    for (var i = 0; i < g_coords.length; i++) {
      if (i > 0) codeString += ", ";
      codeString += "jQuery.getJSON(url + g_coords[" + i + "].join(';'))";
    }
    codeString += ").done(afterConvertCoordinates);";
    //console.debug('codeString=%s', codeString);

    console.time("convert coordinates");
    eval(codeString);
  });

  function afterConvertCoordinates() {
    console.timeEnd("convert coordinates");
    //console.debug('args=%o', arguments);

    // 1. 百度坐标集
    var coordinates = [];
    var result;
    for (var i = 0; i < arguments.length; i++) {
      result = arguments[i][0].result;
      for (var j = 0; j < result.length; j++) {
        coordinates.push(new BMap.Point(result[j].x, result[j].y));
      }
    }
    console.info("coordinates.len=%d", coordinates.length);
    //console.debug('coordinates=%o', coordinates);

    // 2. 计算轨迹的边界、中心点
    var x, y, minX = coordinates[0].lng, minY = coordinates[0].lat, maxX = minX, maxY = minY;
    for (var i = 0; i < coordinates.length; i++) {
      x = coordinates[i].lng;
      y = coordinates[i].lat;
      minX = Math.min(minX, x);
      minY = Math.min(minY, y);
      maxX = Math.max(maxX, x);
      maxY = Math.max(maxY, y);
    }
    console.info("边界: minX=%f, minY=%f, maxX=%f, maxY=%f", minX, minY, maxX, maxY);   // 边界
    var center = new BMap.Point((maxX + minX) / 2, (maxY + minY) / 2); // 中心点
    console.info("中心: x=%f, y=%f", center.lng, center.lat);

    // 3. 初始化地图：http://map.sogou.com/api/documentation/javascript/api2.5/reference.html#MapOptions
    var map = new BMap.Map(document.getElementById("map"), {
      mapType: BMAP_NORMAL_MAP
    });
    map.centerAndZoom(center, 13);  // 初始化
    map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
    map.setViewport([new BMap.Point(minX, minY), new BMap.Point(maxX, maxY)]);// 设置地图可以显示整条轨迹
    map.addControl(new BMap.MapTypeControl({anchor: BMAP_ANCHOR_TOP_RIGHT})); // 添加地图类型控件
    map.addControl(new BMap.ScaleControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT}));// 左下角，添加比例尺
    map.addControl(new BMap.NavigationControl());  //左上角，添加默认缩放平移控件
    //new BMapLib.RectangleZoom(map, {followText: "拖拽鼠标进行操作"	}).open();  //开启鼠标框选放大 .close() 则关闭

    // 4. 标记起点
    var marker = new BMap.Marker(coordinates[0], {
      title: "起点",
      offset: new BMap.Size(0, 0) // 标注的位置偏移值
    });
    marker.setLabel(new BMap.Label("起点", {offset: new BMap.Size(20, -10)}));
    map.addOverlay(marker);

    // 4. 标记终点
    marker = new BMap.Marker(coordinates[coordinates.length - 1], {
      title: "终点",
      offset: new BMap.Size(0, 0) // 标注的位置偏移值
    });
    marker.setLabel(new BMap.Label("终点", {offset: new BMap.Size(20, -10)}));
    map.addOverlay(marker);

    // 4. 标记中心点
    marker = new BMap.Marker(center, {
      title: "中心",
      offset: new BMap.Size(0, 0) // 标注的位置偏移值
    });
    marker.setLabel(new BMap.Label("中心", {offset: new BMap.Size(20, -10)}));
    map.addOverlay(marker);

    // 5. 绘制轨迹
    marker = new BMap.Polyline(coordinates, {
      strokeColor: "#2b2b2b",
      strokeOpacity: 0.7,
      strokeWeight: 2,
      strokeStyle: "dash",
      enableClicking: false,
      enableEditing: false
    });
    map.addOverlay(marker);
    //marker.enableEditing(); //开启编辑功能

    // 小车图片：0-熄火、1-空车、2-重车
    var carIcons = [new BMap.Icon("car_stalled.png", new BMap.Size(15, 24))
      , new BMap.Icon("car_empty.png", new BMap.Size(15, 24))
      , new BMap.Icon("car_running.png", new BMap.Size(15, 24))];
    var carMarker = new BMap.Marker(coordinates[0], {
      icon: carIcons[parseInt(gps[0].carryStatus)],
      rotation: 90
    });
    map.addOverlay(carMarker);

    // 6. 轨迹回放
    var i = 0;
    console.group("change carryStatus");
    var timer = setInterval(function () {
      if (++i >= coordinates.length) {
        window.clearInterval(timer);
        console.groupEnd("");
      } else {
        //console.log("i=%d, gps=%o", i, gps[i]);
        carMarker.setPosition(coordinates[i]);
        carMarker.setRotation(gps[i].direction || 0);
        if (gps[i].carryStatus != gps[i - 1].carryStatus) {
          console.info("carryStatus=%s", gps[i].carryStatus);
          carMarker.setIcon(carIcons[parseInt(gps[i].carryStatus)]);
        }
      }
    }, 100);
  }
});