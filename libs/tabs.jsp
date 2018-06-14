<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div title='test' data-type='form' class="bc-page"
  data-namespace="<s:url value="/bc-test/bctabs" />"
  data-js='<s:url value="/bc-test/libs/tabs.js" />'
  data-initMethod='bctestTabs.init'
  data-option='{width:550}' style="overflow-y:auto;">
  <s:form name="testForm" theme="simple">
    <div id="formTabs" class="formTabs bc-tabs layout-top ui-widget ui-helper-reset"
      data-cfg="{height:300}" style="height:300px;width:500px;overflow: hidden;">
          <div class="tabsContainer">
                <div class="slideContainer">
                <ul class="tabs ui-helper-reset">
            <li class="tab ui-widget-content first active"><a href="#otherFormFields" class="ui-state-default ui-state-active">其他信息</a></li>
          <li class="tab ui-widget-content"><a href='<s:url value="/bc/unit/create"/>' class="ui-state-default">单位信息</a></li>
          <li class="tab ui-widget-content"><a href='<s:url value="/bc/department/paging" />' class="ui-state-default">部门信息</a></li>
          <li class="tab ui-widget-content"><a href='<s:url value="/bc/group/paging" />' class="ui-state-default">岗位信息</a></li>
          <li class="tab ui-widget-content"><a href='<s:url value="/bc/user/paging" />' class="ui-state-default">用户信息</a></li>
          <li class="tab ui-widget-content"><a href='<s:url value="/bc/role/paging" />' class="ui-state-default">角色信息</a></li>
          <li class="tab ui-widget-content"><a href='<s:url value="/bc/resource/paging" />' class="ui-state-default">资源信息</a></li>
          <li class="tab ui-widget-content"><a href='<s:url value="/bc/error/todo" />' class="ui-state-default">TODO信息</a></li>
                </ul>
              </div>
          </div>
          <div class="contentContainer ui-helper-reset ui-widget-content">
        <div id="otherFormFields" class="content active">
          <table class="formFields" cellspacing="2" cellpadding="0" >
            <tr>
              <td class="label">标签1:</td>
              <td class="value"><s:textfield name="name1"/></td>
              <td class="label">标签2:</td>
              <td class="value"><s:textfield name="name2"/></td>
            </tr>
            <tr>
              <td class="label">标签3:</td>
              <td class="value"><s:textfield name="name3"/></td>
              <td class="label">标签4:</td>
              <td class="value"><s:textfield name="name4"/></td>
            </tr>
          </table>
        </div>
      </div>
    </div>
  </s:form>
</div>