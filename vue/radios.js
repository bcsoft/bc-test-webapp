var bc = {};
bc.tree = {
  /**
   * 默认配置
   */
  option: {
    /* 样式 */
    class_container: "bc-tree", /* 容器样式 */
    class_node_selected: "ui-state-focus", /* 节点被选中样式 */
    class_node_hover: "ui-state-hover"  /* 节点鼠标悬停样式 */
  },

  /**
   * 初始化
   * @param container 对话框内容的jquery对象
   */
  init: function (container) {
    //alert(container);
    // 添加树的全局样式
    var $tree = $(container);
    $tree.toggleClass(bc.tree.option.class_container, true);

    //禁止选择文字
    if ($tree.disableSelection) $tree.disableSelection();
  },
  /** 选择节点 */
  selectNode: function ($node) {
    $node.closest("." + bc.tree.option.class_container).find(".item." + bc.tree.option.class_node_selected)
      .toggleClass(bc.tree.option.class_node_selected, false).toggleClass("ui-state-normal", true);

    $node.children(".item").toggleClass(bc.tree.option.class_node_selected, true).toggleClass("ui-state-normal", false);
  },
  /** 展开折叠节点 */
  toggleNode: function ($node) {
    $node.toggleClass("open collapsed");
    $node.find(">.item>.nav-icon").toggleClass("ui-icon ui-icon-triangle-1-se ui-icon ui-icon-triangle-1-e");
    $node.find(">.item>.type-icon").toggleClass("ui-icon-folder-open ui-icon-folder-collapsed");
  },
  /** 获取选中的节点信息
   * @param $tree tree的jquery对象
   * @param returnJson true|false {id:..., name:...,el:...}
   */
  getSelected: function ($tree, returnJson) {
    var $items = $tree.find("div.item." + bc.tree.option.class_node_selected);
    if ($items.length == 1) {
      if (returnJson) {
        return {
          id: $items.attr("data-id"),
          name: $items.children(".text").text(),
          el: $items.get(0)
        };
      } else {
        return $items.attr("data-id");
      }
    } else if ($items.length > 1) {
      var r = [];
      $items.each(function (i) {
        var $t = $(this);
        if (returnJson) {
          r.push({
            id: $t.attr("data-id"),
            name: $t.children(".text").text(),
            el: $t.get(0)
          });
        } else {
          r.push($t.attr("data-id"));
        }
      });
      return r;
    } else {
      return null;
    }
  }
};

// 节点的事件监听
$(".treeNode>.item").live("mouseover mouseout click dblclick", function (e) {
  e.stopPropagation();
  var $nodeItem = $(this);
  var $node = $nodeItem.parent();
  if (e.type == 'click') {										// 单击节点
    console.log("click");
    bc.tree.selectNode($node);
    if ($(e.target).is(".nav-icon:visible")) {
      bc.tree.toggleNode($node);
    }
    //console.log(bc.tree.getSelected($node.closest("." + bc.tree.option.class_container),true));

    // 调用回调函数
    var $tree = $node.closest("." + bc.tree.option.class_container);
    var cfg = $tree.data("cfg");
    if (cfg && cfg.callback) {
      var cbFn = cfg.callback;
      if (typeof(cfg.callback) == "string") {
        cfg.callback = bc.getNested(cfg.callback);
      }
    }
  } else if (e.type == 'dblclick') {								// 双击节点
    console.log("dblclick:todo");
  } else if (e.type == 'mouseover') {	// 鼠标悬停及离开行
    $nodeItem.toggleClass(bc.tree.option.class_node_hover, true).toggleClass("ui-state-normal", false);
  } else if (e.type == 'mouseout') {	// 鼠标悬停及离开行
    $nodeItem.toggleClass(bc.tree.option.class_node_hover, false).filter(":not(." + bc.tree.option.class_node_selected + ")").toggleClass("ui-state-normal", true);
  }
});

// 节点右侧操作按钮的时间监听
$(".treeNode>.item>ul.buttons>li").live("mouseover mouseout click", function (e) {
  e.stopPropagation();
  var $button = $(this);
  var $node = $button.closest(".treeNode");
  if (e.type == 'click') {										// 单击
    console.log("click nodeButton");
    // TODO
  } else if (e.type == 'mouseover' || e.type == 'mouseout') {		// 鼠标悬停及离开行
    $button.toggleClass("ui-state-hover ui-corner-all");
  }
});

(function ($) {
  //bc.tree.init(".tree");
})(jQuery);