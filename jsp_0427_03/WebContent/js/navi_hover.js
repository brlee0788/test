$(document).ready(function(){
	
	$(".navis").mouseenter(function(){
		$(this).css({"border-bottom":"3px solid red", "color":"red"});
	});
	$(".navis").mouseleave(function(){
		$(this).css({"border-bottom":"0px solid red", "color":"#101010"});
	});
	
	
});