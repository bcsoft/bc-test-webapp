<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div title='选择单位部门岗位用户' data-type='form' class="bc-page"
  data-js='<s:url value="/bc/identity/identity.js" />,<s:url value="/bc-test/identity/select.js" />'
  data-initMethod='bc.selectIdentityTest.init'
  data-option='{"width":500,"minWidth":250,"minHeight":100,"modal":false}'
  style="overflow-y: auto;">
  <fieldset>
    <legend>选择用户信息</legend>
    <input id="selectUser" type="button" value="选择用户(单选)">
    <input id="selectUsers" type="button" value="选择用户(多选)"><br/>
    <input id="selectUserHistory" type="button" value="选择用户历史(单选)" style="display: none">
    <input id="selectUserHistorys" type="button" value="选择用户历史(多选)" style="display: none">
  </fieldset>
  <fieldset>
    <legend>选择单位信息</legend>
    <input id="selectUnit" type="button" value="选择单位(单选)">
    <input id="selectUnits" type="button" value="选择单位(多选)">
  </fieldset>
  <fieldset>
    <legend>选择单位或部门信息</legend>
    <input id="selectOU" type="button" value="选择单位或部门(单选)">
    <input id="selectOUs" type="button" value="选择单位或部门(多选)">
  </fieldset>
  <fieldset>
    <legend>选择岗位信息</legend>
    <input id="selectGroup" type="button" value="选择岗位(单选)">
    <input id="selectGroups" type="button" value="选择岗位(多选)">
  </fieldset>
  <fieldset>
    <legend>选择角色、资源信息</legend>
    <input id="selectRole" type="button" value="选择角色(单选)">
    <input id="selectRoles" type="button" value="选择角色(多选)"><br/>
    <input id="selectResource" type="button" value="选择资源(单选)">
    <input id="selectResources" type="button" value="选择资源(多选)">
  </fieldset>
  <fieldset>
    <legend>上传图片</legend>
    <input id="uploadImage" type="button" value="上传图片" class="bc-imageEditor"
      data-cfg='{puid:"puid",ptype:"ptype1",onOk:"bc.selectIdentityTest.onOk4imageEditor"}'>
  </fieldset>
</div>