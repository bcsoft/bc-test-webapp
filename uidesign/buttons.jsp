<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="cn.bc.web.ui.html.toolbar.ToolbarRadios"%>
<div title='工具条按钮设计' data-type='form' class="bc-page"
	data-js='<s:url value="/bc-test/uidesign/buttons.js"/>,<s:url value="/bc-test/uidesign/buttons.css"/>'
	data-initMethod='bc.buttonsDesign.init'
	data-option='{width:650,height:300}' style="overflow: auto;">
	<div
		style="margin: 10px; padding: 10px; border-bottom: 1px solid #ccc;">
		<div class="">单选按钮组:(jQueryUI)</div>
		<div id="jQueryUIRadio">
			<input type="radio" id="radio1" name="radio" /><label for="radio1">Choice
				1</label> <input type="radio" id="radio2" name="radio" checked="checked" /><label
				for="radio2">Choice 2</label> <input type="radio" id="radio3"
				name="radio" /><label for="radio3">Choice 3</label>
		</div>
	</div>
	<div
		style="margin: 10px; padding: 10px; border-bottom: 1px solid #ccc;">
		<div class="">单选按钮组:(Design)</div>
		<div id="radioDesign" class="bc-radios ui-buttonset" style="display:inline-block;">
			<div class="ui-button ui-widget ui-state-default ui-button-text-only ui-corner-left ui-state-active">
				<span class="ui-button-text">选项1</span>
			</div><div class="ui-button ui-widget ui-state-default ui-button-text-only">
				<span class="ui-button-text">选项2</span>
			</div><div class="ui-button ui-widget ui-state-default ui-button-text-only ui-corner-right">
				<span class="ui-button-text">选项3</span>
			</div>
		</div>
	</div>
	<div
		style="margin: 10px; padding: 10px; border-bottom: 1px solid #ccc;">
		<div class="">单选按钮组:(Java)</div>
		<%= new ToolbarRadios().addRadio("选项1","v1").addRadio("选项2","v2").addRadio("选项3","v3").setActive(0) %>
		<%= new ToolbarRadios().addRadio("选项1","v1").addRadio("选项2","v2").addRadio("选项3","v3").setActive(1) %>
		<%= new ToolbarRadios().addRadio("选项1","v1").addRadio("选项2","v2").addRadio("选项3","v3").setActive(2) %>
	</div>
</div>