<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="cn.bc.web.ui.html.toolbar.*"%>
<div title='工具条按钮设计' data-type='form' class="bc-page"
  data-js='<s:url value="/bc/identity/identity.js"/>,<s:url value="/bc-test/uidesign/buttons.js"/>,<s:url value="/bc-test/uidesign/buttons.css"/>'
  data-initMethod='bc.buttonsDesign.init' data-extras='{id:123}'
  data-option='{
    width: 800,
    height: 600,
    buttons: [<s:property value="buttonOption1" escapeHtml="false"/>,<s:property value="buttonOption2" escapeHtml="false"/>]
  }' style="overflow: auto;">
  <div style="margin: 10px; padding: 10px; border-bottom: 1px solid #ccc;">
    <div class="">按钮:(Design2)</div>
    <div style="border:1px solid #ccc;" class="bc-toolbar ui-widget-content">
      <button class="bc-button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" type="button" data-action="create">
        <span class="ui-button-icon-primary ui-icon ui-icon-document"></span>
        <span class="ui-button-text">新建</span>
      </button>
      <div class="bc-rightButtons" >
        <div class="bc-searchButton bc-buttonGroup advance" data-action="search" 
          data-url='<s:url value="/bc-test/show?tpl=/bc-test/uidesign/conditions.jsp"/>'
          class="ui-state-default ui-widget-content">
          <a href="#" id="searchBtn" class="ui-icon ui-icon-search" title="点击执行查询"></a>
          <input type="text" id="searchText" class="ui-widget-content" style="outline:none;">
          <a href="#" id="advanceSearchBtn" class="ui-icon ui-icon-triangle-1-s" title="点击显示更多查询条件"></a>
        </div>
      </div>
    </div>
  </div>
  <div style="margin: 10px; padding: 10px; border-bottom: 1px solid #ccc;">
    <div class="">按钮:(Design1)</div>
    <div style="border:1px solid #ccc;" class="bc-toolbar ui-widget-content">
      <button class="bc-button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" type="button" data-action="create">
        <span class="ui-button-icon-primary ui-icon ui-icon-document"></span>
        <span class="ui-button-text">新建</span>
      </button><button class="bc-button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" type="button" data-action="edit">
        <span class="ui-button-icon-primary ui-icon ui-icon-pencil"></span>
        <span class="ui-button-text">编辑</span>
      </button><button class="bc-button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" type="button" data-action="delete">
        <span class="ui-button-icon-primary ui-icon ui-icon-trash"></span>
        <span class="ui-button-text">删除</span>
      </button><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icons">
        <span class="ui-button-icon-primary ui-icon ui-icon-home"></span>
        <span class="ui-button-text">正常</span>
        <span class="ui-button-icon-secondary ui-icon ui-icon-triangle-1-s"></span>
      </button>
      <div id="radioDesign" class="bc-radioGroup ui-buttonset" style="display:inline-block;">
        <div class="ui-button ui-widget ui-state-default ui-button-text-only ui-corner-left ui-state-active" data-value="v1">
          <span class="ui-button-text">选项1</span>
        </div><div class="ui-button ui-widget ui-state-default ui-button-text-only" data-value="v2">
          <span class="ui-button-text">选项2</span>
        </div><div class="ui-button ui-widget ui-state-default ui-button-text-only ui-corner-right" data-value="v3">
          <span class="ui-button-text">选项3</span>
        </div>
      </div>
      <div class="bc-searchButton bc-buttonGroup" data-action="search" class="ui-state-default ui-widget-content" style="float:right;">
        <a href="#" id="searchBtn" class="ui-icon ui-icon-search" title="点击查询"></a>
        <input type="text" id="searchText" class="ui-widget-content" style="outline:none;">
      </div>
    </div>
  </div>
  <div style="margin: 10px; padding: 10px; border-bottom: 1px solid #ccc;">
    <div class="">按钮:(Java)</div>
    <%=new ToolbarRadioGroup().addRadio("选项1,v1;选项2,v2;选项3,v3").setActive(0)%>
    <%=new ToolbarRadioGroup().addRadio("选项1","v1").addRadio("选项2","v2").addRadio("选项3","v3").setActive(1)%>
    <%=new ToolbarRadioGroup().addRadio("选项1","v1").addRadio("选项2","v2").addRadio("选项3","v3").setActive(2)%>
    <%=new ToolbarMenuButton("操作").addMenuItem("操作1","v1").addMenuItem("操作2","v2").addMenuItem("操作3","v3").setChange("bc.buttonsDesign.selectMenuButtonItem")%>
  </div>
  <div style="margin: 10px; padding: 10px; border-bottom: 1px solid #ccc;">
    <div class="">按钮:(jQueryUI)</div>
    <div style="border:1px solid #ccc;" class="bc-toolbar ui-widget-content">
      <button id="contextmenu">正常</button>
      <div id="jQueryUIRadio" style="display:inline-block;">
        <input type="radio" id="radio1" name="radio" /><label for="radio1">Choice
          1</label> <input type="radio" id="radio2" name="radio" checked="checked" /><label
          for="radio2">Choice 2</label> <input type="radio" id="radio3"
          name="radio" /><label for="radio3">Choice 3</label>
      </div>
    </div>
  </div>
</div>