bc.selectIdentityTest = {
	init : function() {
		var $form = $(this);
		
		//选择用户
		$form.find("#selectUser").click(function(){
			bc.identity.selectUser({
				history: false,
				onOk: function(user){
					logger.info($.param(user));
					alert(user.id + "," + user.name);
				}
			});
		});
		$form.find("#selectUsers").click(function(){
			bc.identity.selectUser({
				multiple: true,
				history: false,
				onOk: function(users){
					logger.info($.param(users));
					alert(users[0].id + "," + users[0].name);
				}
			});
		});
		
		//选择用户历史
		$form.find("#selectUserHistory").click(function(){
			bc.identity.selectUser({
				multiple: false,//此为默认值，可不设置
				history: true,//此为默认值，可不设置
				onOk: function(user){
					logger.info($.param(user));
					alert(user.id + "," + user.name);
				}
			});
		});
		$form.find("#selectUserHistorys").click(function(){
			bc.identity.selectUser({
				multiple: true,
				history: true,//此为默认值，可不设置
				onOk: function(users){
					logger.info($.param(users));
					alert(users[0].id + "," + users[0].name);
				}
			});
		});
		
		//选择单位
		$form.find("#selectUnit").click(function(){
			bc.identity.selectUnit({
				onOk: function(unit){
					logger.info($.param(unit));
					alert(unit.id + "," + unit.name);
				}
			});
		});
		$form.find("#selectUnits").click(function(){
			bc.identity.selectUnit({
				multiple: true,
				onOk: function(units){
					logger.info($.param(units));
					alert(units[0].id + "," + units[0].name);
				}
			});
		});
		
		//选择单位或部门
		$form.find("#selectOU").click(function(){
			bc.identity.selectUnitOrDepartment({
				onOk: function(ou){
					logger.info($.param(ou));
					alert(ou.id + "," + ou.name);
				}
			});
		});
		$form.find("#selectOUs").click(function(){
			bc.identity.selectUnitOrDepartment({
				multiple: true,
				onOk: function(ous){
					logger.info($.param(ous));
					alert(ous[0].id + "," + ous[0].name);
				}
			});
		});
		
		//选择岗位
		$form.find("#selectGroup").click(function(){
			bc.identity.selectGroup({
				onOk: function(group){
					logger.info($.param(group));
					alert(group.id + "," + group.name);
				}
			});
		});
		$form.find("#selectGroups").click(function(){
			bc.identity.selectGroup({
				multiple: true,
				onOk: function(groups){
					logger.info($.param(groups));
					alert(groups[0].id + "," + groups[0].name);
				}
			});
		});
		
		//选择角色
		$form.find("#selectRole").click(function(){
			bc.identity.selectRole({
				onOk: function(role){
					logger.info($.param(role));
					alert(role.id + "," + role.name);
				}
			});
		});
		$form.find("#selectRoles").click(function(){
			bc.identity.selectRole({
				multiple: true,
				onOk: function(roles){
					logger.info($.param(roles));
					alert(roles[0].id + "," + roles[0].name);
				}
			});
		});
		
		//选择资源
		$form.find("#selectResource").click(function(){
			bc.identity.selectResource({
				onOk: function(resource){
					logger.info($.param(resource));
					alert(resource.id + "," + resource.name);
				}
			});
		});
		$form.find("#selectResources").click(function(){
			bc.identity.selectResource({
				multiple: true,
				onOk: function(resources){
					logger.info($.param(resources));
					alert(resources[0].id + "," + resources[0].name);
				}
			});
		});
		
		//上传图片
		$form.find("#uploadImage").click(function(){
			bc.image.crop({
				puid:'puid1',ptype:'ptype1',
				empty:"/bc-business/carMan/empty.jpg",
				onOk: function(resource){
					logger.info($.param(resource));
				}
			});
		});
	}
};