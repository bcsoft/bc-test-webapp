bc.buttonsDesign = {
	init : function() {
		var $page = $(this);
		$page.find("#jQueryUIRadio").buttonset();

		var tpl = '<div style="width:200px;height:200px;border:1px solid blue;background-color:red;position: absolute;">AAAA<div>';
		var $contextmenu = $page.find("#contextmenu").button({
			icons : {
				primary : "ui-icon-home",
				secondary : "ui-icon-triangle-1-s"
			}
		});

		$(tpl).appendTo($page.parent()).popup({
			trigger : $contextmenu
		});
	},
	/**
	 * 上下文为按钮所在窗口，第一个参数为选中的项({value:[value],text:[text]})
	 * 
	 */
	selectMenuButtonItem : function(option) {
		logger.info("selectMenuButtonItem:option=" + $.toJSON(option));
	},
	clickTestButton : function() {
		logger.info("clickTestButton");
	},
	doAdvanceSearch : function() {
		logger.info("doAdvanceSearch");
	}
};