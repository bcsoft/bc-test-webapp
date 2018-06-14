bc.selectIdentityTest = {
  init: function () {
    var $form = $(this);

    //选择用户
    $form.find("#selectUser").click(function () {
      bc.identity.selectUser({
        history: false,
        onOk: function (user) {
          logger.info($.toJSON(user));
        }
      });
    });
    $form.find("#selectUsers").click(function () {
      bc.identity.selectUser({
        multiple: true,
        history: false,
        onOk: function (users) {
          logger.info($.toJSON(users));
        }
      });
    });

    //选择用户历史
    $form.find("#selectUserHistory").click(function () {
      bc.identity.selectUser({
        multiple: false,//此为默认值，可不设置
        history: true,//此为默认值，可不设置
        onOk: function (user) {
          logger.info($.toJSON(user));
        }
      });
    });
    $form.find("#selectUserHistorys").click(function () {
      bc.identity.selectUser({
        multiple: true,
        history: true,//此为默认值，可不设置
        onOk: function (users) {
          logger.info($.toJSON(users));
        }
      });
    });

    //选择单位
    $form.find("#selectUnit").click(function () {
      bc.identity.selectUnit({
        onOk: function (unit) {
          logger.info($.toJSON(unit));
        }
      });
    });
    $form.find("#selectUnits").click(function () {
      bc.identity.selectUnit({
        multiple: true,
        onOk: function (units) {
          logger.info($.toJSON(units));
        }
      });
    });

    //选择单位或部门
    $form.find("#selectOU").click(function () {
      bc.identity.selectUnitOrDepartment({
        onOk: function (ou) {
          logger.info($.toJSON(ou));
        }
      });
    });
    $form.find("#selectOUs").click(function () {
      bc.identity.selectUnitOrDepartment({
        multiple: true,
        onOk: function (ous) {
          logger.info($.toJSON(ous));
        }
      });
    });

    //选择岗位
    $form.find("#selectGroup").click(function () {
      bc.identity.selectGroup({
        onOk: function (group) {
          logger.info($.toJSON(group));
        }
      });
    });
    $form.find("#selectGroups").click(function () {
      bc.identity.selectGroup({
        multiple: true,
        onOk: function (groups) {
          logger.info($.toJSON(groups));
        }
      });
    });

    //选择角色
    $form.find("#selectRole").click(function () {
      bc.identity.selectRole({
        onOk: function (role) {
          logger.info($.toJSON(role));
        }
      });
    });
    $form.find("#selectRoles").click(function () {
      bc.identity.selectRole({
        multiple: true,
        onOk: function (roles) {
          logger.info($.toJSON(roles));
        }
      });
    });

    //选择资源
    $form.find("#selectResource").click(function () {
      bc.identity.selectResource({
        onOk: function (resource) {
          logger.info($.toJSON(resource));
        }
      });
    });
    $form.find("#selectResources").click(function () {
      bc.identity.selectResource({
        multiple: true,
        onOk: function (resources) {
          logger.info($.toJSON(resources));
        }
      });
    });
  },
  onOk4imageEditor: function (json) {
    logger.info($.param(json));
  }
};