/**
 * 地球坐标系 (WGS-84) 到火星坐标系 (GCJ-02) 的转换算法
 * @ref http://blog.csdn.net/coolypf/article/details/8686588
 * @ref https://on4wp7.codeplex.com/SourceControl/changeset/view/21483#353936
 * @ref http://lbsbbs.amap.com/forum.php?mod=viewthread&tid=724&extra=page%3D1 高德的rest API接口
 * @param wgs {Object} WGS-84国际GPS坐标: 用国际标准的GPS记录仪记录下来的坐标
 * @wgs lng 经度
 * @wgs lat 纬度
 * @returns {Object} GCJ-02坐标: 国测局02年发布的坐标体系,又称火星坐标,在中国必须至少使用GCJ-02的坐标体系
 */
function wgs2gcj(wgs) {
  var pi = 3.14159265358979324;
  var a = 6378245.0;
  var ee = 0.00669342162296594323;

  function outOfChina(wgs) {
    if ((wgs.lng < 72.004 || wgs.lng > 137.8347)
      || (wgs.lat < 0.8293 || wgs.lat > 55.8271))
      return true;
    else
      return false;
  }

  function transformLat(x, y) {
    var ret = -100.0 + 2.0 * x + 3.0 * y + 0.2 * y * y + 0.1 * x * y + 0.2 * Math.sqrt(Math.abs(x));
    ret += (20.0 * Math.sin(6.0 * x * pi) + 20.0 * Math.sin(2.0 * x * pi)) * 2.0 / 3.0;
    ret += (20.0 * Math.sin(y * pi) + 40.0 * Math.sin(y / 3.0 * pi)) * 2.0 / 3.0;
    ret += (160.0 * Math.sin(y / 12.0 * pi) + 320 * Math.sin(y * pi / 30.0)) * 2.0 / 3.0;
    return ret;
  }

  function transformLon(x, y) {
    var ret = 300.0 + x + 2.0 * y + 0.1 * x * x + 0.1 * x * y + 0.1 * Math.sqrt(Math.abs(x));
    ret += (20.0 * Math.sin(6.0 * x * pi) + 20.0 * Math.sin(2.0 * x * pi)) * 2.0 / 3.0;
    ret += (20.0 * Math.sin(x * pi) + 40.0 * Math.sin(x / 3.0 * pi)) * 2.0 / 3.0;
    ret += (150.0 * Math.sin(x / 12.0 * pi) + 300.0 * Math.sin(x / 30.0 * pi)) * 2.0 / 3.0;
    return ret;
  }

  function transform(wgs) {
    if (outOfChina(wgs)) {
      return wgs;
    }
    var dLat = transformLat(wgs.lng - 105.0, wgs.lat - 35.0);
    var dLon = transformLon(wgs.lng - 105.0, wgs.lat - 35.0);
    var radLat = wgs.lat / 180.0 * pi;
    var magic = Math.sin(radLat);
    magic = 1 - ee * magic * magic;
    var sqrtMagic = Math.sqrt(magic);
    dLat = (dLat * 180.0) / ((a * (1 - ee)) / (magic * sqrtMagic) * pi);
    dLon = (dLon * 180.0) / (a / sqrtMagic * Math.cos(radLat) * pi);
    return {lng: wgs.lng + dLon, lat: wgs.lat + dLat};
  }

  return transform(wgs);
}

/* test
 wgs: lng: 113.25067, lat: 23.20972
 baidu api: lng: 113.26249307863, lat: 23.2131854553
 qq api: lng: 113.256001, lat: 23.20706954
 wgs2gcj: lng: 113.25599950951447, lat: 23.207069893977035

 var wgs = {lng: 113.25067, lat: 23.20972};
 console.log("wgs=%o, gcj=%o", wgs, wgs2gcj(wgs));
 */
