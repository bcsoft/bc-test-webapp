<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div title='选择单位部门用户' data-type='form' class="bc-page"
  data-js='<s:url value="/bc/identity/identity.js" />'
  data-option='{"width":618,"minWidth":250,"minHeight":100}'
  style="overflow-y: auto;">
  <s:form name="autoSelectForm" theme="simple">
    <div class="formFields ui-widget-content" style="width:600px;">
      <table class="formFields" cellspacing="2" cellpadding="0">
        <tr>
          <td class="label">选择单位:</td>
          <td class="value relative">
            <s:textfield name="unitName" readonly="true"/>
            <s:hidden name="unitId" />
            <ul class="inputIcons">
              <li class="selectUnit inputIcon ui-icon ui-icon-circle-plus" 
                data-cfg='{"valueField":"unitId","mapping":"unitId=id,unitName=name"}'
                title='<s:text name="title.click2select"/>'></li>
              <li class="clearSelect inputIcon ui-icon ui-icon-circle-close" 
                data-cfg='unitId,unitName'
                title='<s:text name="title.click2clear"/>'></li>
            </ul>
          </td>
          <td class="label">选择用户:</td>
          <td class="value relative">
            <s:textfield name="userName" readonly="true"/>
            <s:hidden name="userId" />
            <ul class="inputIcons">
              <li class="selectUser inputIcon ui-icon ui-icon-circle-plus" 
                data-cfg='{"valueField":"userId","mapping":"userId=id,userName=name"}'
                title='<s:text name="title.click2select"/>'></li>
              <li class="clearSelect inputIcon ui-icon ui-icon-circle-close" 
                data-cfg='userId,userName'
                title='<s:text name="title.click2clear"/>'></li>
            </ul>
          </td>
        </tr>
        <tr>
          <td class="label">单位或部门:</td>
          <td class="value relative">
            <s:textfield name="ouName" readonly="true"/>
            <s:hidden name="ouId" />
            <ul class="inputIcons">
              <li class="selectUnitOrDepartment inputIcon ui-icon ui-icon-circle-plus" 
                data-cfg='{"valueField":"ouId","mapping":"ouId=id,ouName=name"}'
                title='<s:text name="title.click2select"/>'></li>
              <li class="clearSelect inputIcon ui-icon ui-icon-circle-close" 
                data-cfg='ouId,ouName'
                title='<s:text name="title.click2clear"/>'></li>
            </ul>
          </td>
          <td class="label">选择岗位:</td>
          <td class="value relative">
            <s:textfield name="groupName" readonly="true"/>
            <s:hidden name="groupId" />
            <ul class="inputIcons">
              <li class="selectGroup inputIcon ui-icon ui-icon-circle-plus" 
                data-cfg='{"valueField":"groupId","mapping":"groupId=id,groupName=name"}'
                title='<s:text name="title.click2select"/>'></li>
              <li class="clearSelect inputIcon ui-icon ui-icon-circle-close" 
                data-cfg='groupId,groupName'
                title='<s:text name="title.click2clear"/>'></li>
            </ul>
          </td>
        </tr>
        <tr>
          <td class="label">选择部门:</td>
          <td class="value relative">
            <s:textfield name="departmentName" readonly="true"/>
            <s:hidden name="departmentId" />
            <ul class="inputIcons">
              <li class="selectDepartment inputIcon ui-icon ui-icon-circle-plus" 
                data-cfg='{"valueField":"departmentId","mapping":"departmentId=id,departmentName=name"}'
                title='<s:text name="title.click2select"/>'></li>
              <li class="clearSelect inputIcon ui-icon ui-icon-circle-close" 
                data-cfg='departmentId,departmentName'
                title='<s:text name="title.click2clear"/>'></li>
            </ul>
          </td>
          <td class="label">&nbsp;</td>
          <td class="value relative">
            &nbsp;
          </td>
        </tr>
      </table>
    </div>
  </s:form>
</div>