bc.viewDesign= {
	init : function() {
		var $page = $(this);
		//$page.find("#jQueryUIRadio").buttonset();
		
		//var tpl = '<div style="width:200px;height:200px;border:1px solid blue;background-color:red;position: absolute;">AAAA<div>';
		var tpl = '<ul style="min-width:200px;">';
		tpl += '<li><a href="#Amsterdam">Amsterdam</a></li>';
		tpl += '<li><a href="#Anaheim">Anaheim</a></li>';
		tpl += '<li><a href="#Cologne">Cologne</a></li>';
		tpl += '<li><a href="#Frankfurt">Frankfurt</a></li>';
		tpl += '<li><a href="#Magdeburg">Magdeburg</a></li>';
		tpl += '<li><a href="#Munich">Munich</a></li>';
		tpl += '<li><a href="#Utrecht">Utrecht</a></li>';
		tpl += '<li><a href="#Zurich">Zurich</a></li>';
		tpl += '</ul>';
		
		var $contextmenu = $page.find("#contextmenu").button({
			icons: {
				primary: "ui-icon-home",
				secondary: "ui-icon-triangle-1-s"
			}
		});
		$(tpl).appendTo($page).menu({
			select: function(event, ui) {
				$(this).popup("close");
				$contextmenu.button("option", "label", ui.item.text());
			}
		}).popup({
			trigger:$contextmenu
		});
	},
	changeRadio: function(option){
		logger.info("option=" + $.toJSON(option));
	}
};