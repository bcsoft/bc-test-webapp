jQuery(function () {
	var ak = "4beaaf30daf921131125116aff14e217";

	// 1. 获取轨迹数据
	console.time("load 'gps.json'");
	var gps;
	jQuery.getJSON("gps.json", function (data) {
		gps = data;
		console.timeEnd("load 'gps.json'");

		// 1. 坐标集
		var coordinates = [], gcj;
		for (var i = 0; i < gps.length; i++) {
			gcj = wgs2gcj({lng: gps[i].longitude, lat: gps[i].latitude});
			coordinates.push(new AMap.LngLat(gcj.lng, gcj.lat));
		}

		afterConvertCoordinates(coordinates);
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
		var center = new AMap.LngLat((maxX + minX) / 2, (maxY + minY) / 2); // 中心点
		console.info("中心: x=%f, y=%f", center.getLng(), center.getLat());

		// 3. 初始化地图：http://lbs.qq.com/javascript_v2/doc/map.html
		var map = new AMap.Map(document.getElementById("map"), {
			// 创建地图二维视口
			view: new AMap.View2D({
				center: center,         // 创建中心点坐标
				zoom: 14,               // 设置地图缩放级别
				rotation: 0             // 设置地图旋转角度
			}),
			//设置地图语言类型，默认：中文简体
			lang:"zh_cn"
		});
		// 根据指定的范围调整地图视野
		map.setBounds(new AMap.Bounds(new AMap.LngLat(minX, minY), new AMap.LngLat(maxX, maxY)));

		// 地图加载完毕事件
		AMap.event.addListener(map,'complete',function(){
			//document.getElementById('info').innerHTML = "地图图块加载完毕！当前地图中心点为：" + map.getCenter();
		});

		// 4. 标记起点
		var marker = new AMap.Marker({
			map: map,
			position: coordinates[0],
			title: "起点"
		});

		// 4. 标记终点
		marker = new AMap.Marker({
			map: map,
			position: coordinates[coordinates.length - 1],
			title: "终点"
		});

		// 4. 标记中心点
		marker = new AMap.Marker({
			map: map,
			position: center,
			title: "中心"
		});

		// 5. 绘制轨迹
		marker = new AMap.Polyline({
			map: map,
			path: coordinates,
			strokeColor:"#2b2b2b",
			strokeOpacity: 0.7,
			strokeWeight: 2,
			strokeStyle: "solid"
		});

		// 小车图片：0-熄火、1-空车、2-重车
		var carIcons = [
			new AMap.Icon({
				image: "car_stalled.png",
				size: new AMap.Size(15, 24),
				imageSize: new AMap.Size(15, 24)
			}),
			new AMap.Icon({
				image: "car_empty.png",
				size: new AMap.Size(15, 24),
				imageSize: new AMap.Size(15, 24)
			}),
			new AMap.Icon({
				image: "car_running.png",
				size: new AMap.Size(15, 24),
				imageSize: new AMap.Size(15, 24)
			})
		];
		var carMarker = new AMap.Marker({
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
				carMarker.setAngle(gps[i].direction);
				if(gps[i].carryStatus != gps[i - 1].carryStatus){
					console.info("carryStatus=%s", gps[i].carryStatus);
					carMarker.setIcon(carIcons[parseInt(gps[i].carryStatus)]);
				}
			}
		}, 50);
	}
});