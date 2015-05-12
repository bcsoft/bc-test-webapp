jQuery(function () {
	var ak = "PI4BZ-UIE3J-2QGFS-KN4AB-KT3AT-RSFYW";

	// 1. 获取轨迹数据
	console.time("load 'gps.json'");
	var gps;
	jQuery.getJSON("gps.json", function (data) {
		gps = data;
		console.timeEnd("load 'gps.json'");

		// 1. 坐标集
		var coordinates = [];
		for (var i = 0; i < gps.length; i++) {
			coordinates.push(new qq.maps.LatLng(gps[i].latitude, gps[i].longitude));
		}

		// gps经纬度坐标转换为QQ经纬度坐标
		qq.maps.convertor.translate(coordinates, 1, afterConvertCoordinates);
	});

	function afterConvertCoordinates(data){
		console.timeEnd("convert coordinates");
		//console.debug('args=%o', arguments);

		// 1. 坐标集
		var coordinates = data;
		console.info("coordinates.len=%d", coordinates.length);
		//console.debug('coordinates=%o', coordinates);

		// 2. 计算轨迹的边界、中心点
		var x, y, minX = coordinates[0].getLng(), minY = coordinates[0].getLat(), maxX = minX, maxY = minY;
		for (var i = 0; i < coordinates.length; i++) {
			x = coordinates[i].getLng();
			y = coordinates[i].getLat();
			minX = Math.min(minX, x);
			minY = Math.min(minY, y);
			maxX = Math.max(maxX, x);
			maxY = Math.max(maxY, y);
		}
		console.info("边界: minX=%f, minY=%f, maxX=%f, maxY=%f", minX, minY, maxX, maxY);   // 边界
		var center = new qq.maps.LatLng((maxY + minY) / 2, (maxX + minX) / 2); // 中心点
		console.info("中心: x=%f, y=%f", center.getLng(), center.getLat());

		// 3. 初始化地图：http://lbs.qq.com/javascript_v2/doc/map.html
		var map = new qq.maps.Map(document.getElementById("map"), {
			mapTypeId: qq.maps.MapTypeId.ROADMAP
			, zoom: 13
			, center: center
			// 地图的边界，当拖拽超出限定的边界范围后，会自动移动回来
			//, boundary: new qq.maps.LatLngBounds(...)
		});
		// 根据指定的范围调整地图视野
		map.fitBounds(new qq.maps.LatLngBounds(new qq.maps.LatLng(minY, minX), new qq.maps.LatLng(maxY, maxX)));

		// 4. 标记起点
		var marker = new qq.maps.Marker({
			map: map,
			position: coordinates[0],
			title: "起点"
		});

		// 4. 标记终点
		marker = new qq.maps.Marker({
			map: map,
			position: coordinates[coordinates.length - 1],
			title: "终点"
		});

		// 4. 标记中心点
		marker = new qq.maps.Marker({
			map: map,
			position: center,
			title: "中心"
		});

		// 5. 绘制轨迹
		marker = new qq.maps.Polyline({
			map: map,
			path: coordinates,
			strokeColor: qq.maps.Color.fromHex("#2b2b2b", 0.7),
			strokeWeight: 2,
			strokeDashStyle: "solid",
			visible: true
		});

		// 小车图片：0-熄火、1-空车、2-重车
		var carIcons = [
			new qq.maps.MarkerImage("car_stalled.png", new qq.maps.Size(15, 24), null, new qq.maps.Point(7.5, 12)),
			new qq.maps.MarkerImage("car_empty.png", new qq.maps.Size(15, 24), null, new qq.maps.Point(7.5, 12)),
			new qq.maps.MarkerImage("car_running.png", new qq.maps.Size(15, 24), null, new qq.maps.Point(7.5, 12))
		];
		var carMarker = new qq.maps.Marker({
			map: map,
			position: coordinates[0],
			icon: carIcons[parseInt(gps[0].carryStatus)]
		});

		// 6. 轨迹回放
		var i = 0;
		console.group("change carryStatus");
		var timer = setInterval(function() {
			if(++i >= coordinates.length) {
				window.clearInterval(timer);
				console.groupEnd("");
			}else {
				//console.log("i=%d, gps=%o", i, gps[i]);
				carMarker.setPosition(coordinates[i]);
				//carMarker.setRotation(gps[i].direction || 0); // TODO 腾讯地图不支持覆盖物的旋转
				if(gps[i].carryStatus != gps[i - 1].carryStatus){
					console.info("carryStatus=%s", gps[i].carryStatus);
					carMarker.setIcon(carIcons[parseInt(gps[i].carryStatus)]);
				}
			}
		}, 50);
	}
});