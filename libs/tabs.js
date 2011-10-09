var bctestTabs = {
	init:function(option,readonly) {
		var $page = $(this);
		logger.info("bctestTabs.init");
		
		// 初始化多页签
		$page.find('#formTabs').bctabs(bc.page.defaultBcTabsOption);
	}
};