bc.slideTabsTest = {
  initHorizontal: function () {
    var $page = $(this);
    $page.find('div#tabs_horizontal').slideTabs({
      // Options
      orientation: 'horizontal',
      slideLength: 694, // Width of the div#tabs_container element
      contentAnim: 'slideH',
      contentEasing: 'easeInOutExpo',
      tabsAnimTime: 300,
      contentAnimTime: 600
    });
  },
  initVertical: function () {
    var $page = $(this);
    $page.find('div#tabs_vertical').slideTabs({
      // Options
      orientation: 'vertical',
      slideLength: 300, // Height of the div#v_tabs_container element -minus the directional button's height (37px)
      contentAnim: 'slideH',
      contentEasing: 'easeInOutExpo',
      tabsAnimTime: 300,
      contentAnimTime: 600,
      tabsScroll: true,
      autoHeight: false
    });
  }
};