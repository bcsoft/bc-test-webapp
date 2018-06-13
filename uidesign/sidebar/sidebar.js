var bc = {};
bc.sidebar = {
  init: function () {
    //alert("sidebar");
  },
  load: function () {
    //alert("sidebar");
  }
};

(function ($) {
  bc.sidebar.init(".sidebar");

  var innerScroll = false;
  if (innerScroll) {
    // 切换为内滚动
    var $groups = $(".groups");
    $groups.addClass("innerScroll");

    // 内滚动时可以拖拉分区的大小
    var $b = $("#center");
    var $task = $(".task");
    var $mail = $(".mail");
    var $s = $(".spliter");
    $s.draggable({
      containment: "parent",
      axis: "y",
      grid: [1, 1]
    }).on("dragstop", function (event, ui) {
      var top = $s.position().top;
      var totalHeight = $groups.height();
      var mailHeight = totalHeight - top - $s.height();
      $b.html(ui.position.top + "," + ui.offset.top);
      $mail.height(mailHeight);
      $task.css("bottom", totalHeight - top);
      $s.css({bottom: mailHeight, top: "auto"});
    });
  }

  // 条目的点击事件
//	$(".groups").on("dblclick",".row",function(event){
//		$("#bottom").html($(this).find(".label").html());
//	});
  var i = 0;
  var $t = $(".groups");//.hammer();
  $t.on("click", ".rows>.row", function (event) {// 点击信息条目
    console.log(event);
    $("#center").prepend(i++ + ":" + event.type + ":" + $(this).find(">.header>.label").html() + "<br>");
    //event.preventDefault();
  }).on("click", ".group>.header>.label>span", function (event) {// 点击分组的名称
    console.log(event);
    $("#center").prepend(i++ + ":" + event.type + ":g:" + $(this).html() + "<br>");
    //event.preventDefault();
  });
})(jQuery);