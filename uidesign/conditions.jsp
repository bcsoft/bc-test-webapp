<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="cn.bc.web.ui.html.toolbar.*"%>
<form class="bc-conditionsForm ui-widget-content ui-state-highlight">
	<ul class="conditions" style="min-width:19.3em;">
		<li class="condition first">
			<div class="label">文本框</div>
			<div class="value"><input name="textField1"  type="text" class="ui-widget-content"
				data-condition='{"type":"string","ql":"name like ?"}'>
				<ul class="inputIcons">
					<li class="clearSelect inputIcon ui-icon ui-icon-close" title='<s:text name="title.click2clear"/>'></li>
				</ul>
			</div>
		</li>
		<li class="condition">
			<div class="label">带选择和清空按钮的文本框</div>
			<div class="value">
				<input type="text" name="unitName" class="ui-widget-content" readonly="readonly">
				<input type="hidden" name="unitId" data-condition='{"type":"long","ql":"unitId=?"}'>
				<ul class="inputIcons">
					<li class="selectUnit inputIcon ui-icon ui-icon-plus"
						data-cfg='unitName=name,unitId=id'
						title='<s:text name="title.click2select"/>'></li>
					<li class="clearSelect inputIcon ui-icon ui-icon-close" title='<s:text name="title.click2clear"/>'></li>
				</ul>
			</div>
		</li>
		<li class="condition">
			<div class="label">日期</div>
			<div class="value">
				<input type="text" class="bc-date ui-widget-content" data-validate="date" value="2011-01-31"
					data-condition='{"type":"date","ql":"dateField1=?"}'>
				<ul class="inputIcons">
					<li class="selectCalendar inputIcon ui-icon ui-icon-calendar"></li>
					<li class="clearSelect inputIcon ui-icon ui-icon-close" title='<s:text name="title.click2clear"/>'></li>
				</ul>
			</div>
		</li>
		<li class="condition">
			<div class="label">日期范围(简单控制)</div>
			<div class="value">
				<div class="bc-dateContainer">
					<input type="text" class="bc-date ui-widget-content" data-validate="date" value="2011-01-01" style="width:9em;"
						data-cfg='{"addYear": 5}'
						data-condition='{"type":"startDate","ql":"dateField2>=?"}'>
					<ul class="inputIcons">
						<li class="selectCalendar inputIcon ui-icon ui-icon-calendar"></li>
						<li class="clearSelect inputIcon ui-icon ui-icon-close" title='<s:text name="title.click2clear"/>'></li>
					</ul>
				</div>～<div class="bc-dateContainer">
					<input type="text" class="bc-date ui-widget-content" data-validate="date" value="2011-01-31" style="width:9em;"
						data-condition='{"type":"endDate","ql":"dateField2<=?"}'>
					<ul class="inputIcons">
						<li class="selectCalendar inputIcon ui-icon ui-icon-calendar"></li>
						<li class="clearSelect inputIcon ui-icon ui-icon-close" title='<s:text name="title.click2clear"/>'></li>
					</ul>
				</div>
			</div>
			<div class="clear"></div>
		</li>
		<li class="condition">
			<div class="label">日期范围(混合控制）</div>
			<div class="value multi"
				data-condition='{
					"type": "multi",
					"ql": "(df31>=?0 and df32<=?1)",
					"ql10": "df31>=?",
					"ql01": "df32<=?"
				}'>
				<div class="bc-dateContainer">
					<input id="startDate" type="text" class="bc-date ui-widget-content value" 
						data-validate="date" value="2011-01-01" style="width:9em;"
						data-value="startDate"
						data-cfg='{"addYear": 5}'>
					<ul class="inputIcons">
						<li class="selectCalendar inputIcon ui-icon ui-icon-calendar"></li>
						<li class="clearSelect inputIcon ui-icon ui-icon-close" title='<s:text name="title.click2clear"/>'></li>
					</ul>
				</div>～<div class="bc-dateContainer">
					<input id="endDate"  type="text" class="bc-date ui-widget-content value" 
						data-validate="date" value="2011-01-31" style="width:9em;"
						data-value="endDate">
					<ul class="inputIcons">
						<li class="selectCalendar inputIcon ui-icon ui-icon-calendar"></li>
						<li class="clearSelect inputIcon ui-icon ui-icon-close" title='<s:text name="title.click2clear"/>'></li>
					</ul>
				</div>
			</div>
			<div class="clear"></div>
		</li>
		<li class="condition first">
			<div class="label">下拉框(input)</div>
			<div class="value">
				<input type="text" class="bc-select ui-widget-content" readonly="readonly"
					data-source='[{"value":"","label":"&nbsp;"},{"value":"value1","label":"text1"},{"value":"value2","label":"text2"}]' >
				<input type="hidden" data-condition='{"type":"long","ql":"myId=?"}'>
				<ul class="inputIcons">
					<li class="bc-select inputIcon ui-icon ui-icon-triangle-1-s"
						title='<s:text name="title.click2select"/>'></li>
					<li class="clearSelect inputIcon ui-icon ui-icon-close" title='<s:text name="title.click2clear"/>'></li>
				</ul>
			</div>
		</li>
		<li class="condition first">
			<div class="label">下拉框(select)</div>
			<div class="value">
				<select class="ui-widget-content" data-condition='{"type":"long","ql":"myId2=?"}'>
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
			<div class="value radios" data-condition='{"type":"long","ql":"status=?"}'>
				<label><input type="radio" class="radio" name="radioField1" value="11"><span>选项11</span></label>
				<label><input type="radio" class="radio" name="radioField1" value="12"><span>选项12</span></label>
				<label><input type="radio" class="radio" name="radioField1" value="13"><span>选项13</span></label>
			</div>
		</li>
		<li class="condition">
			<div class="label">多选按钮</div>
			<div class="value checkboxes" data-condition='{"type":"int","key":"status"}' >
				<label><input type="checkbox" name="checkboxField1" value="21"><span>选项21</span></label>
				<label><input type="checkbox" name="checkboxField1" value="22"><span>选项22</span></label>
				<label><input type="checkbox" name="checkboxField1" value="23"><span>选项23</span></label>
			</div>
		</li>
	</ul>
	<div class="operate">
		<button type="button" id="doSearchBtn" class="bc-button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
			data-click="bc.toolbar.doAdvanceSearch">
			<span class="ui-button-icon-primary ui-icon ui-icon-search"></span>
			<span class="ui-button-text">查询</span>
		</button>
	</div>
</form>