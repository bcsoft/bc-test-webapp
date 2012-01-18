<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="cn.bc.web.ui.html.toolbar.*"%>
<div title='工具条按钮设计' data-type='form' class="bc-page"
	data-js='<s:url value="/bc/identity/identity.js"/>,<s:url value="/bc-test/uidesign/buttons.js"/>,<s:url value="/bc-test/uidesign/buttons.css"/>'
	data-initMethod='bc.buttonsDesign.init'
	data-option='{
		width: 800,
		height: 600,
		buttons: [<s:property value="buttonOption1" escapeHtml="false"/>,<s:property value="buttonOption2" escapeHtml="false"/>]
	}' style="overflow: auto;">
	<div style="margin: 10px; padding: 10px; border-bottom: 1px solid #ccc;z-index: 9999999;">
		<div class="">按钮:(Design2)</div>
		<div style="border:1px solid #ccc;" class="bc-toolbar ui-widget-content">
			<button class="bc-button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" type="button" data-action="create">
				<span class="ui-button-icon-primary ui-icon ui-icon-document"></span>
				<span class="ui-button-text">新建</span>
			</button>
			<div class="bc-rightButtons" >
				<div class="bc-searchButton bc-buttonGroup advance" data-action="search" class="ui-state-default ui-widget-content" style="z-index: 9999999;">
					<a href="#" id="searchBtn" class="ui-icon ui-icon-search" title="点击查询"></a>
					<input type="text" id="searchText" class="ui-widget-content" style="outline:none;">
					<a href="#" id="advanceSearchBtn" class="ui-icon ui-icon-triangle-1-s" title="显示搜索选项"></a>
					<form class="bc-advanceSearchPopup ui-widget-content ui-state-highlight" style="right:0;_top:30px;">
						<ul class="conditions" style="min-width:19.3em;">
							<li class="condition first">
								<div class="label">文本框</div>
								<div class="value"><input type="text" class="ui-widget-content"
									data-condition='{type:"string",ql:"name like ?"}'></div>
							</li>
							<li class="condition">
								<div class="label">带选择和清空按钮的文本框</div>
								<div class="value">
									<input type="text" name="unitName" class="ui-widget-content">
									<input type="hidden" name="unitId" data-condition='{type:"long",ql:"unitId=?"}'>
									<ul class="inputIcons">
										<li class="selectUnit inputIcon ui-icon ui-icon-plus"
											data-cfg='unitName=name,unitId=id'
											title='<s:text name="title.click2select"/>'></li>
										<li class="clearSelect inputIcon ui-icon ui-icon-close" 
											data-cfg='withSelectField1'
											title='<s:text name="title.click2clear"/>'></li>
									</ul>
								</div>
							</li>
							<li class="condition">
								<div class="label">日期</div>
								<div class="value">
									<input type="text" name="dateField1" class="bc-date ui-widget-content" value="2011-01-31"
										data-condition='{type:"date",ql:"dateField1=?"}'>
									<ul class="inputIcons">
										<li class="selectCalendar inputIcon ui-icon ui-icon-calendar" data-cfg="dateField1"></li>
										<li class="clearSelect inputIcon ui-icon ui-icon-close" 
											data-cfg='dateField1'
											title='<s:text name="title.click2clear"/>'></li>
									</ul>
								</div>
							</li>
							<li class="condition">
								<div class="label">日期范围</div>
								<div class="value">
									<div class="bc-dateContainer">
										<input type="text" name="dateField21" class="bc-date ui-widget-content" value="2011-01-01" 
											data-condition='{type:"startDate",ql:"dateField2>=?"}' style="width:9em;">
										<ul class="inputIcons">
											<li class="selectCalendar inputIcon ui-icon ui-icon-calendar" data-cfg="dateField21"></li>
											<li class="clearSelect inputIcon ui-icon ui-icon-close" 
												data-cfg='dateField21'
												title='<s:text name="title.click2clear"/>'></li>
										</ul>
									</div>～<div class="bc-dateContainer">
										<input type="text" name="dateField22" class="bc-date ui-widget-content" value="2011-01-31" 
											data-condition='{type:"endDate",ql:"dateField2<=?"}'  style="width:9em;">
										<ul class="inputIcons">
											<li class="selectCalendar inputIcon ui-icon ui-icon-calendar" data-cfg="dateField22"></li>
											<li class="clearSelect inputIcon ui-icon ui-icon-close" 
												data-cfg='dateField22'
												title='<s:text name="title.click2clear"/>'></li>
										</ul>
									</div>
								</div>
								<div class="clear"></div>
							</li>
							<li class="condition first">
								<div class="label">下拉框(input)</div>
								<div class="value">
									<input type="text" name="selectField1" class="bc-select ui-widget-content"
										data-source='[{value:"value1",text:"text1"},{value:"value2",text:"text2"}]' >
									<input type="hidden" name="myId" data-condition='{type:"long",ql:"myId=?"}'>
									<ul class="inputIcons">
										<li class="bc-select inputIcon ui-icon ui-icon-triangle-1-s"
											title='<s:text name="title.click2select"/>'
											data-cfg='selectField1'></li>
										<li class="clearSelect inputIcon ui-icon ui-icon-close" 
											data-cfg='selectField1'
											title='<s:text name="title.click2clear"/>'></li>
									</ul>
								</div>
							</li>
							<li class="condition first">
								<div class="label">下拉框(select)</div>
								<div class="value">
									<select class="ui-widget-content" data-condition='{type:"long",ql:"myId2=?"}'>
										<option></option>
										<option>选择1</option>
										<option>选择1</option>
										<option>选择2</option>
										<option>选择3</option>
									</select>
								</div>
							</li>
							<li class="condition">
								<div class="label">单选按钮</div>
								<div class="value">
									<label><input type="radio" class="radio" name="radioField1" value="1" data-condition='{type:"long",ql:"status=?"}' checked="checked"><span>选项11</span></label>
									<label><input type="radio" class="radio" name="radioField1" value="2" data-condition='{type:"long",ql:"status=?"}'><span>选项12</span></label>
									<label><input type="radio" class="radio" name="radioField1" value="3" data-condition='{type:"long",ql:"status=?"}'><span>选项13</span></label>
								</div>
							</li>
							<li class="condition">
								<div class="label">多选按钮</div>
								<div class="value" data-condition='{type:"int",name:"status"}' >
									<label><input type="checkbox" name="checkboxField1" value="1" checked="checked"><span>选项11</span></label>
									<label><input type="checkbox" name="checkboxField1" value="2"><span>选项12</span></label>
									<label><input type="checkbox" name="checkboxField1" value="3"><span>选项13</span></label>
								</div>
							</li>
						</ul>
						<div class="operate">
							<button class="bc-button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" type="button" 
								data-click="bc.buttonsDesign.doAdvanceSearch">
								<span class="ui-button-icon-primary ui-icon ui-icon-search"></span>
								<span class="ui-button-text">搜索</span>
							</button>
						</div>
					</form>
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