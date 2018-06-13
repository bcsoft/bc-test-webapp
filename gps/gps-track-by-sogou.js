jQuery(function () {
  // 1. 获取轨迹数据
  jQuery.getJSON("gps.json", function (gps) {
    // 2. 计算轨迹的边界
    var coordinates = [];   // 坐标集
    var x, y, minX = gps[0].latitude, minY = gps[0].longitude, maxX = gps[0].latitude, maxY = gps[0].longitude;
    for (var i = 0; i < gps.length; i++) {
      x = gps[i].latitude;
      y = gps[i].longitude;
      minX = Math.min(minX, x);
      minY = Math.min(minY, y);
      maxX = Math.max(maxX, x);
      maxY = Math.max(maxY, y);
      coordinates.push(new sogou.maps.LatLng(x, y, true));
    }
    console.log("gps: minX=%f, minY=%f, maxX=%f, maxY=%f", minX, minY, maxX, maxY);   // 边界
    var center = new sogou.maps.LatLng((maxX + minX) / 2, (maxY + minY) / 2, true); // 中心点

    // 3. 初始化地图：http://map.sogou.com/api/documentation/javascript/api2.5/reference.html#MapOptions
    new sogou.maps.Map(document.getElementById("map"), {
      'mapTypeId': sogou.maps.MapTypeId.ROADMAP,   // 普通地图 ROADMAP | 卫星地图 SATELLITE | 三维地图 EDUSHIMAP
      'zoom': 12, // 广州全貌最佳为 12，设为13则与调度系统的缩放差不多
      bounds: new sogou.maps.LatLngBounds(new sogou.maps.LatLng(minX, minY, true), new sogou.maps.LatLng(maxX, maxY, true)),
      //'center': new sogou.maps.LatLng(2631281, 12614437, true) // 广州 (天河南一路16号) - 先纬度后经度
      callback: afterMapInited    // 地图初始化完毕后调用的回调函数
    });

    function afterMapInited() {
      var map = this;
      // 4. 标记起点、终点
      new sogou.maps.Marker({
        map: map,
        title: "起点",
        label: {visible: true, align: "TOP"},
        position: new sogou.maps.LatLng(gps[0].latitude, gps[0].longitude, true)
      });
      new sogou.maps.Marker({
        map: map,
        title: "终点",
        label: {visible: true, align: "RIGHT"},
        position: new sogou.maps.LatLng(gps[gps.length - 1].latitude, gps[gps.length - 1].longitude, true)
      });
      new sogou.maps.Marker({
        map: map,
        title: "中心",
        position: center
      })

      // 5. 绘制轨迹
      var flightPath = new sogou.maps.Polyline({
        path: coordinates,
        strokeColor: "#2b2b2b",
        strokeOpacity: 0.5,
        strokeWeight: 5
      });
      flightPath.setMap(map);

      // 6. 轨迹回放
      // 定义带箭头的LineStyle样式
      var arrowLine = {
        id: "L01",
        "v:stroke": {
          color: "blue",
          weight: 5,
          endcap: "Round",
          opacity: "50%",
          endArrow: "Classic",
          endarrowlength: "long",
          endarrowwidth: "wide"
        }
      };
      flightPath = new sogou.maps.Polyline({
        map: map,
        styles: [arrowLine],
        path: coordinates.slice(0, 1)   // 初始化两个点
      });
      var count = coordinates.length, to = 0;
      var tid = setInterval(function () {
        //console.log("to=%d", to);
        flightPath.setPath(coordinates.slice(0, to));// 逐步添加更多点
        if (to >= count) clearInterval(tid);
        to = to + 10;
      }, 1000);
    }
  });
});