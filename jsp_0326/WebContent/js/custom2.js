/**
 * 
 */


$(document).ready(function(){
	$("#t2_2").hide();
	
	$("#opt1").click(function(){
		if($(this).is(":checked")){
			$("#t2_2").show();
		}else {
			$("#t2_2").hide();
		}
	});

});




