bc.datepickerTest = {
	onSelectCallback : function(selectedDate) {
		//var instance = $(this).data("datepicker");
		 $(this).next().html(selectedDate);
	}
};