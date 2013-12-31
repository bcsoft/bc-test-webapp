touchable = 'ontouchstart' in window;
//适应触控设备
function eventAdapt() {
    mousedown = touchable ? "touchstart " : "mousedown ";
    mouseup = touchable ? "touchend " : "mouseup ";
    mousemove = touchable ? "touchmove " : "mousemove ";
    mouseout = touchable ? "touchcancel " : "mouseout ";
}
eventAdapt();

$(function () {
    // 创建画布
    var stage = new Kinetic.Stage({
        container: 'canvasContainer',
        width: 600,
        height: 300
    });

    // 创建层
    var layer = new Kinetic.Layer({
        draggable: true
    });
    stage.add(layer);

    // 创建节点
    layer.add(createTask());

    // 创建连接线
    layer.add(createSequenceFlow());

    // 绘制并显示
    stage.draw();
});

var borderWidth = 2;
/**
 * 环节
 * @param cfg
 * @returns {Kinetic.Rect}
 */
function createTask(cfg) {
    return new Kinetic.Rect({
        x: 10,              //矩形左上角x坐标
        y: 10,              //矩形左上角y坐标
        width: 140,         //矩形的宽度
        height: 70,         //矩形的高度
        //  线性渐变填充
        fillLinearGradientStartPoint: { x: 70, y: 0 },// 线性渐变起点
        fillLinearGradientEndPoint: { x: 70, y: 35 },// 线性渐变结束点
        fillLinearGradientColorStops: [0, "#FEFEFE", 0.5, "#FBFDD7", 1, "#F8FBB2"],// 线性渐变色：0到1之间的数，0表示起点色，1表示终点色
        //fill: "#FBFDDD",    //矩形的填充色
        stroke: "#000",     //矩形边缘线的颜色
        strokeWidth: borderWidth,     //矩形边缘线的宽度
        draggable: true,   // 图形可拖动
        cornerRadius: 10
    });
}

/**
 * 连接线
 * @param cfg
 * @returns {Kinetic.Line}
 */
function createSequenceFlow(cfg) {
    return new Kinetic.Line({
        points: [[80,80],[80,120],[120,120],[120,160]],
        width: 6,
        fill: "red",                 //填充色
        stroke: "#666",                 //边缘线色
        strokeWidth: borderWidth,       //矩形边缘线的宽度
        draggable: true,                // 图形可拖动
        //lineJoin: "round",   //miter, round, or bevel
        //lineCap: "round"         //butt, round, or sqare
    });
}
