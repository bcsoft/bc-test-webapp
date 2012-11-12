var bc={};
bc.tree = {
	/**
	 * 默认配置
	 */
	option: {
		/* 样式 */
		class_container: "bc-tree",	/* 容器样式 */
		class_node_selected: "ui-state-focus",	/* 节点被选中样式 */
		class_node_hover: "ui-state-hover"	/* 节点鼠标悬停样式 */
	},
	
	/**
	 * 初始化
	 * @param container 对话框内容的jquery对象
	 */
	init: function(container) {
		//alert(container);
		// 添加树的全局样式
		var $tree = $(container);
		$tree.toggleClass(bc.tree.option.class_container,true);
		
		//禁止选择文字
		if($tree.disableSelection) $tree.disableSelection();
	},
	/** 选择节点 */
	selectNode: function($node){
		$node.closest("." + bc.tree.option.class_container).find(".item." + bc.tree.option.class_node_selected)
		.toggleClass(bc.tree.option.class_node_selected,false).toggleClass("ui-state-normal",true);
		
		$node.children(".item").toggleClass(bc.tree.option.class_node_selected,true).toggleClass("ui-state-normal",false);
	},
	/** 展开折叠节点 */
	toggleNode: function($node){
		$node.toggleClass("open collapsed");
		$node.find(">.item>.nav").toggleClass("ui-icon ui-icon-triangle-1-se ui-icon ui-icon-triangle-1-e");
		$node.find(">.item>.type").toggleClass("ui-icon-folder-open ui-icon-folder-collapsed");
	}
};

// 树：鼠标悬停样式
$(".bc-tree .node>.item").live("mouseover mouseout click",function(e){
	e.stopPropagation();
	var $nodeItem = $(this);
	var $node = $nodeItem.parent();
	if (e.type == 'click') {										// 单击行
		bc.tree.selectNode($node);
		if ($(e.target).is(".nav:visible")){
			bc.tree.toggleNode($node);
		}
	}else if (e.type == 'mouseover') {	// 鼠标悬停及离开行
		$nodeItem.toggleClass(bc.tree.option.class_node_hover,true).toggleClass("ui-state-normal",false);
	}else if (e.type == 'mouseout') {	// 鼠标悬停及离开行
		$nodeItem.toggleClass(bc.tree.option.class_node_hover,false).filter(":not(." + bc.tree.option.class_node_selected + ")").toggleClass("ui-state-normal",true);
	}
});

(function($) {
	//bc.tree.init(".tree");
})(jQuery);