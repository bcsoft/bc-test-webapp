bc.namespace("bc.test");
bc.test={
	init: function(){
		alert("init");
	},
	validate: function(){
		alert("validate");
		return true;
	},
	onValidate:function(success){
		alert("onValidate:success=" + success);
		return success;
	},
	getData: function(){
		var $form = $(this);
		alert("getData");
		return $form.serialize();
	}
};