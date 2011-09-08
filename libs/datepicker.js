bc.datepickerTest = {
	init : function(selectedDate) {
		var $page = $(this);
		//绑定验证测试按钮的事件
		$page.find("#validate").click(function(){
			 bc.validator.validate($page);
		});
	},
	onSelectCallback : function(selectedDate) {
		//var instance = $(this).data("datepicker");
		 $(this).next().html(selectedDate);
	}
};