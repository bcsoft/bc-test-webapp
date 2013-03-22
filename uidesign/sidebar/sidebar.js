var bc={};
bc.sidebar = {
	init: function() {
		//alert("sidebar");
	}
};

(function($) {
	bc.sidebar.init(".sidebar");
	
	var innerScroll = true;
	if(innerScroll){
		// 切换为内滚动
		var $groups = $(".groups");
		$groups.addClass("innerScroll");
		
		// 内滚动时可以拖拉分区的大小
		var $b = $("#bottom");
		var $task = $(".task");
		var $mail = $(".mail");
		var $s = $(".spliter");
		$s.draggable({
			containment:"parent",
			axis:"y",
			grid:[1,1]
		}).on( "dragstop", function (event,ui) {
			var top = $s.position().top;
			var totalHeight = $groups.height();
			var mailHeight = totalHeight-top-$s.height();
			$b.html(ui.position.top + "," + ui.offset.top);
			$mail.height(mailHeight);
			$task.css("bottom",totalHeight-top);
			$s.css({bottom:mailHeight,top:"auto"});
		});
	}
})(jQuery);