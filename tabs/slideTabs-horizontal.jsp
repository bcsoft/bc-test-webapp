<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div title='SlideTabs Horizontal Demo' data-type='form' class="bc-page"
  data-js='<s:url 
    value="/ui-libs/jquery/plugins/slidingtabs/1.1.0/themes/default/slidingtabs-horizontal.css" />,<s:url 
    value="/ui-libs/jquery/plugins/easing/1.3/jquery.easing.js" />,<s:url 
    value="/ui-libs/jquery/plugins/mousewheel/3.0.4/jquery.mousewheel.min.js" />,<s:url 
    value="/ui-libs/jquery/plugins/slidingtabs/1.1.0/jquery.slidingtabs.js" />,<s:url 
    value="/bc-test/tabs/slideTabs.js" />'
  data-initMethod='bc.slideTabsTest.initHorizontal'
  data-option='{"width":820}' style="text-align: center;">
  
    <!-- Start HTML - Horizontal Tabs -->
    <div id="tabs_horizontal" style="padding:20px;margin:auto;text-align: left;">                                                                                                                             
        <a href="#prev" class="prev"></a>                
        <div id="tabs_container">                                                                                                                                          
            <ul class="tabs">
                <li><a href="#content_1" id="tab_1" class="tab active">Horizontal Tab #1</a></li>
                <li><a href="#content_2" id="tab_2" class="tab">Horizontal Tab #2</a></li>                                     
                <li><a href="#content_3" id="tab_3" class="tab">Horizontal Tab #3</a></li>
                <li><a href="#content_4" id="tab_4" class="tab">Horizontal Tab #4</a></li>
                <li><a href="#content_5" id="tab_5" class="tab">Horizontal Tab #5</a></li>                                                       
                <li><a href="#content_6" id="tab_6" class="tab">Horizontal Tab #6</a></li>
                <li><a href="#content_7" id="tab_7" class="tab">Horizontal Tab #7</a></li>
                <li><a href="#content_8" id="tab_8" class="tab">Horizontal Tab #8</a></li>                        
            </ul>                                                                                                
        </div> 
        <!-- /#tabs_container -->
        <a href="#next" class="next"></a>                                                                                             
        <div id="content">
            <div class="view_container">
                <div id="content_1" class="tab_view">
                    <h2>Horizontal Tab #1</h2>
                    <div class="text">                                                                                                  
                        <p>Lorem ipsum dolor sit amet, duis netus ut posuere feugiat arcu, purus wisi quis fringilla at, nunc ut eget elit duis erat praesent, ut fermentum lacus turpis cras. Justo gravida erat quam mauris purus, aliquam quisque, eget nisl. Pellentesque nibh duis odio morbi quam, scelerisque convallis aenean quam tincidunt ornare nam nec feugiat sodales tristique.</p>
                        <blockquote>Aliquam commodo ullamcorper aenean erat. Nullam vel justo in neque porttitor eget laoreet. Aenean lacus adipiscing.</blockquote>
                        <p>Aliquam commodo ullamcorper erat. Nullam vel justo cras porttitor laoreet. Aenean lacus dui, consequat eu, adipiscing nonummy, eget non, nisi. Morbi nunc est, dignissim non, ornare sed, luctus eu, massa. Vivamus tincidunt diam nec eget urna.</p>
                        <p>Curabitur velit. Veniam donec orci viverra, lorem convallis in libero quisque, purus erat dolor curabitur, justo arcu nisl, natoque velit euismod dapibus nulla semper. Suspendisse odio tempor. Id ornare nam nec feugiat, ac consectetuer magna, dolor enim vel in, pulvinar bibendum ante ac, dui nibh dui est neque lacinia et. Duis netus ut posuere feugiat arcu, purus wisi quis fringilla at, nunc ut eget elit duis erat, eu praesent, ut fermentum lacus turpis cras. Justo gravida erat quam mauris purus, aliquam quisque, eget nisl. Pellentesque nibh ut odio morbi quam, scelerisque convallis tincidunt tristique.</p>                                                
                    </div>                            
                </div>
                <div id="content_2" class="tab_view">
                    <h2>Horizontal Tab #2</h2>
                    <div class="text">
                        <p>Lorem ipsum dolor sit amet, duis netus ut posuere feugiat arcu, purus wisi quis fringilla at, nunc ut eget elit duis erat praesent, ut fermentum lacus turpis cras. Justo gravida erat quam mauris purus, aliquam quisque, eget nisl. Pellentesque nibh duis odio morbi quam, scelerisque convallis aenean quam tincidunt ornare nam nec feugiat sodales tristique.</p>
                        <blockquote>Aliquam commodo ullamcorper aenean erat. Nullam vel justo in neque porttitor eget laoreet. Aenean lacus adipiscing.</blockquote>
                        <p>Aliquam commodo ullamcorper erat. Nullam vel justo cras porttitor laoreet. Aenean lacus dui, consequat eu, adipiscing nonummy, eget non, nisi. Morbi nunc est, dignissim non, ornare sed, luctus eu, massa. Vivamus tincidunt diam nec eget urna.</p>
                        <p>Curabitur velit. Veniam donec orci viverra, lorem convallis in libero quisque, purus erat dolor curabitur, justo arcu nisl, natoque velit euismod dapibus nulla semper. Suspendisse odio tempor. Id ornare nam nec feugiat, ac consectetuer magna, dolor enim vel in, pulvinar bibendum ante ac, dui nibh dui est neque lacinia et. Duis netus ut posuere feugiat arcu, purus wisi quis fringilla at, nunc ut eget elit duis erat, eu praesent, ut fermentum lacus turpis cras. Justo gravida erat quam mauris purus, aliquam quisque, eget nisl. Pellentesque nibh ut odio morbi quam, scelerisque convallis tincidunt tristique.</p>                                                
                    </div>
                </div>
                <div id="content_3" class="tab_view">
                    <h2>Horizontal Tab #3</h2>
                    <div class="text">
                        <p>Lorem ipsum dolor sit amet, duis netus ut posuere feugiat arcu, purus wisi quis fringilla at, nunc ut eget elit duis erat praesent, ut fermentum lacus turpis cras. Justo gravida erat quam mauris purus, aliquam quisque, eget nisl. Pellentesque nibh duis odio morbi quam, scelerisque convallis aenean quam tincidunt ornare nam nec feugiat sodales tristique.</p>
                        <blockquote>Aliquam commodo ullamcorper aenean erat. Nullam vel justo in neque porttitor eget laoreet. Aenean lacus adipiscing.</blockquote>
                        <p>Aliquam commodo ullamcorper erat. Nullam vel justo cras porttitor laoreet. Aenean lacus dui, consequat eu, adipiscing nonummy, eget non, nisi. Morbi nunc est, dignissim non, ornare sed, luctus eu, massa. Vivamus tincidunt diam nec eget urna.</p>
                        <p>Curabitur velit. Veniam donec orci viverra, lorem convallis in libero quisque, purus erat dolor curabitur, justo arcu nisl, natoque velit euismod dapibus nulla semper. Suspendisse odio tempor. Id ornare nam nec feugiat, ac consectetuer magna, dolor enim vel in, pulvinar bibendum ante ac, dui nibh dui est neque lacinia et. Duis netus ut posuere feugiat arcu, purus wisi quis fringilla at, nunc ut eget elit duis erat, eu praesent, ut fermentum lacus turpis cras. Justo gravida erat quam mauris purus, aliquam quisque, eget nisl. Pellentesque nibh ut odio morbi quam, scelerisque convallis tincidunt tristique.</p>
                    </div>
                </div>
                <div id="content_4" class="tab_view">
                    <h2>Horizontal Tab #4</h2>
                    <div class="text">
                        <p>Lorem ipsum dolor sit amet, duis netus ut posuere feugiat arcu, purus wisi quis fringilla at, nunc ut eget elit duis erat praesent, ut fermentum lacus turpis cras. Justo gravida erat quam mauris purus, aliquam quisque, eget nisl. Pellentesque nibh duis odio morbi quam, scelerisque convallis aenean quam tincidunt ornare nam nec feugiat sodales tristique.</p>
                        <blockquote>Aliquam commodo ullamcorper aenean erat. Nullam vel justo in neque porttitor eget laoreet. Aenean lacus adipiscing.</blockquote>
                        <p>Aliquam commodo ullamcorper erat. Nullam vel justo cras porttitor laoreet. Aenean lacus dui, consequat eu, adipiscing nonummy, eget non, nisi. Morbi nunc est, dignissim non, ornare sed, luctus eu, massa. Vivamus tincidunt diam nec eget urna.</p>
                        <p>Curabitur velit. Veniam donec orci viverra, lorem convallis in libero quisque, purus erat dolor curabitur, justo arcu nisl, natoque velit euismod dapibus nulla semper. Suspendisse odio tempor. Id ornare nam nec feugiat, ac consectetuer magna, dolor enim vel in, pulvinar bibendum ante ac, dui nibh dui est neque lacinia et. Duis netus ut posuere feugiat arcu, purus wisi quis fringilla at, nunc ut eget elit duis erat, eu praesent, ut fermentum lacus turpis cras. Justo gravida erat quam mauris purus, aliquam quisque, eget nisl. Pellentesque nibh ut odio morbi quam, scelerisque convallis tincidunt tristique.</p>
                    </div>
                </div>
                <div id="content_5" class="tab_view">
                    <h2>Horizontal Tab #5</h2>
                    <div class="text">
                        <p>Lorem ipsum dolor sit amet, duis netus ut posuere feugiat arcu, purus wisi quis fringilla at, nunc ut eget elit duis erat praesent, ut fermentum lacus turpis cras. Justo gravida erat quam mauris purus, aliquam quisque, eget nisl. Pellentesque nibh duis odio morbi quam, scelerisque convallis aenean quam tincidunt ornare nam nec feugiat sodales tristique.</p>
                        <blockquote>Aliquam commodo ullamcorper aenean erat. Nullam vel justo in neque porttitor eget laoreet. Aenean lacus adipiscing.</blockquote>
                        <p>Aliquam commodo ullamcorper erat. Nullam vel justo cras porttitor laoreet. Aenean lacus dui, consequat eu, adipiscing nonummy, eget non, nisi. Morbi nunc est, dignissim non, ornare sed, luctus eu, massa. Vivamus tincidunt diam nec eget urna.</p>
                        <p>Curabitur velit. Veniam donec orci viverra, lorem convallis in libero quisque, purus erat dolor curabitur, justo arcu nisl, natoque velit euismod dapibus nulla semper. Suspendisse odio tempor. Id ornare nam nec feugiat, ac consectetuer magna, dolor enim vel in, pulvinar bibendum ante ac, dui nibh dui est neque lacinia et. Duis netus ut posuere feugiat arcu, purus wisi quis fringilla at, nunc ut eget elit duis erat, eu praesent, ut fermentum lacus turpis cras. Justo gravida erat quam mauris purus, aliquam quisque, eget nisl. Pellentesque nibh ut odio morbi quam, scelerisque convallis tincidunt tristique.</p>
                    </div>
                </div>
                <div id="content_6" class="tab_view">
                    <h2>Horizontal Tab #6</h2>
                    <div class="text">
                        <p>Lorem ipsum dolor sit amet, duis netus ut posuere feugiat arcu, purus wisi quis fringilla at, nunc ut eget elit duis erat praesent, ut fermentum lacus turpis cras. Justo gravida erat quam mauris purus, aliquam quisque, eget nisl. Pellentesque nibh duis odio morbi quam, scelerisque convallis aenean quam tincidunt ornare nam nec feugiat sodales tristique.</p>
                        <blockquote>Aliquam commodo ullamcorper aenean erat. Nullam vel justo in neque porttitor eget laoreet. Aenean lacus adipiscing.</blockquote>
                        <p>Aliquam commodo ullamcorper erat. Nullam vel justo cras porttitor laoreet. Aenean lacus dui, consequat eu, adipiscing nonummy, eget non, nisi. Morbi nunc est, dignissim non, ornare sed, luctus eu, massa. Vivamus tincidunt diam nec eget urna.</p>
                        <p>Curabitur velit. Veniam donec orci viverra, lorem convallis in libero quisque, purus erat dolor curabitur, justo arcu nisl, natoque velit euismod dapibus nulla semper. Suspendisse odio tempor. Id ornare nam nec feugiat, ac consectetuer magna, dolor enim vel in, pulvinar bibendum ante ac, dui nibh dui est neque lacinia et. Duis netus ut posuere feugiat arcu, purus wisi quis fringilla at, nunc ut eget elit duis erat, eu praesent, ut fermentum lacus turpis cras. Justo gravida erat quam mauris purus, aliquam quisque, eget nisl. Pellentesque nibh ut odio morbi quam, scelerisque convallis tincidunt tristique.</p>
                    </div>
                </div>
                <div id="content_7" class="tab_view">
                    <h2>Horizontal Tab #7</h2>
                    <div class="text">
                        <p>Lorem ipsum dolor sit amet, duis netus ut posuere feugiat arcu, purus wisi quis fringilla at, nunc ut eget elit duis erat praesent, ut fermentum lacus turpis cras. Justo gravida erat quam mauris purus, aliquam quisque, eget nisl. Pellentesque nibh duis odio morbi quam, scelerisque convallis aenean quam tincidunt ornare nam nec feugiat sodales tristique.</p>
                        <blockquote>Aliquam commodo ullamcorper aenean erat. Nullam vel justo in neque porttitor eget laoreet. Aenean lacus adipiscing.</blockquote>
                        <p>Aliquam commodo ullamcorper erat. Nullam vel justo cras porttitor laoreet. Aenean lacus dui, consequat eu, adipiscing nonummy, eget non, nisi. Morbi nunc est, dignissim non, ornare sed, luctus eu, massa. Vivamus tincidunt diam nec eget urna.</p>
                        <p>Curabitur velit. Veniam donec orci viverra, lorem convallis in libero quisque, purus erat dolor curabitur, justo arcu nisl, natoque velit euismod dapibus nulla semper. Suspendisse odio tempor. Id ornare nam nec feugiat, ac consectetuer magna, dolor enim vel in, pulvinar bibendum ante ac, dui nibh dui est neque lacinia et. Duis netus ut posuere feugiat arcu, purus wisi quis fringilla at, nunc ut eget elit duis erat, eu praesent, ut fermentum lacus turpis cras. Justo gravida erat quam mauris purus, aliquam quisque, eget nisl. Pellentesque nibh ut odio morbi quam, scelerisque convallis tincidunt tristique.</p>
                    </div>
                </div>                                   
                <div id="content_8" class="tab_view">
                    <h2>Horizontal Tab #8</h2>
                    <div class="text">
                        <p>Lorem ipsum dolor sit amet, duis netus ut posuere feugiat arcu, purus wisi quis fringilla at, nunc ut eget elit duis erat praesent, ut fermentum lacus turpis cras. Justo gravida erat quam mauris purus, aliquam quisque, eget nisl. Pellentesque nibh duis odio morbi quam, scelerisque convallis aenean quam tincidunt ornare nam nec feugiat sodales tristique.</p>
                        <blockquote>Aliquam commodo ullamcorper aenean erat. Nullam vel justo in neque porttitor eget laoreet. Aenean lacus adipiscing.</blockquote>
                        <p>Aliquam commodo ullamcorper erat. Nullam vel justo cras porttitor laoreet. Aenean lacus dui, consequat eu, adipiscing nonummy, eget non, nisi. Morbi nunc est, dignissim non, ornare sed, luctus eu, massa. Vivamus tincidunt diam nec eget urna.</p>
                        <p>Curabitur velit. Veniam donec orci viverra, lorem convallis in libero quisque, purus erat dolor curabitur, justo arcu nisl, natoque velit euismod dapibus nulla semper. Suspendisse odio tempor. Id ornare nam nec feugiat, ac consectetuer magna, dolor enim vel in, pulvinar bibendum ante ac, dui nibh dui est neque lacinia et. Duis netus ut posuere feugiat arcu, purus wisi quis fringilla at, nunc ut eget elit duis erat, eu praesent, ut fermentum lacus turpis cras. Justo gravida erat quam mauris purus, aliquam quisque, eget nisl. Pellentesque nibh ut odio morbi quam, scelerisque convallis tincidunt tristique.</p>
                    </div>
                </div>                                   
            </div> <!-- /#view_container --> 
        </div> <!-- /#content -->                                          
    </div> <!-- /#tabs_horizontal -->        
    <!-- End HTML - Horizontal Tabs --> 
</div>