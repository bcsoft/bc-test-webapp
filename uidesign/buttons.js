bc.buttonsDesign= {
	init : function() {
		var $page = $(this);
		$page.find("#jQueryUIRadio").buttonset();
		
		var tpl = '<div style="width:200px;height:200px;border:1px solid blue;background-color:red;position: absolute;">AAAA<div>';
		var $contextmenu = $page.find("#contextmenu").button({
			icons: {
				primary: "ui-icon-home",
				secondary: "ui-icon-triangle-1-s"
			}
		});
		
		$(tpl).appendTo($page.parent()).popup({
			trigger:$contextmenu
		});
	}
};