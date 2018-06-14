<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div title='选择日日期' data-type='form' class="bc-page"
  data-js='<s:url value="/bc-test/libs/datepicker.js" />'
  data-initMethod='bc.datepickerTest.init'
  data-option='{"width":500}'
  style="overflow-y: auto;">
  <input type="button" id="validate" value="验证测试"/>
  <fieldset>
    <legend>默认配置</legend>
    选日期<input type="text" class="bc-date" value="2011-01-01" style="width:80px;" data-validate="date">
    选时间<input type="text" class="bc-time" value="12:10" style="width:60px;" data-validate="time"><br/>
    选日期+时间<input type="text" class="bc-datetime" value="2011-01-01 12:10" style="width:120px;" data-validate="datetime">
    选日期+时间<input type="text" class="bc-datetime" value="2011-01-01 12:10:30" data-cfg='{timeFormat:"hh:mm:ss",showSecond:true}' style="width:150px;">
  </fieldset>
  <fieldset>
    <legend>自定义格式</legend>
    <input type="text" class="bc-date" value="2011年1月1日" data-cfg='{dateFormat:"yy年m月d日"}'>
    <input type="text" class="bc-date" value="" data-cfg='{dateFormat:"yy年m月d日"}'>
  </fieldset>
  <fieldset>
    <legend>下拉框选择年月</legend>
    选年度<input type="text" class="bc-date" data-cfg='{changeYear:true}'>
    选年月<input type="text" class="bc-date" data-cfg='{changeYear:true,changeMonth:true}'>
  </fieldset>
  <fieldset>
    <legend>其他</legend>
    多月选择<input type="text" class="bc-date" data-cfg='{numberOfMonths:3}'>
    显示按钮<input type="text" class="bc-date" data-cfg='{showButtonPanel:true}'><br/>
    设定minDate<input type="text" class="bc-date" data-cfg='{minDate:$.datepicker.parseDate("yy-mm-dd", "2011-01-10")}'>
    不能小于今天<input type="text" class="bc-date" data-cfg='{minDate:0}'><br/>
    设定maxDate<input type="text" class="bc-date" data-cfg='{maxDate:$.datepicker.parseDate("yy-mm-dd", "2011-01-10")}'>
    不能大于今天<input type="text" class="bc-date" data-cfg='{maxDate:0}'><br/>
    显示第几周<input type="text" class="bc-date" data-cfg='{showWeek: true}'>
  </fieldset>
  <fieldset>inline</legend>
    <div class="bc-date" data-cfg='{onSelect:"bc.datepickerTest.onSelectCallback"}'></div>
    <div></div>
  </fieldset>
  <fieldset>
    <legend>自定义格式参考</legend>
    <div>yy -- 4位数的年份(如2011)</div>
    <div>mm -- 两位数的月份(如01)</div>
    <div>dd -- 两位数的天(如01)</div>
    <div>MM -- 代表大写的月份(如九月)</div>
    <div>DD -- 代表大写的星期(如星期三)</div>
    <div>更多请参考jqueryUI API</div>
  </fieldset>
</div>