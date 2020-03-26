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













//--------------------------------------------------- 
/*

$(document).ready(function(){
	
	$("li").hide();
	$("#reading").click(function(){
		if($(this).is(":checked")){
			$("li").eq(0).show();
		}else{
			$("li").eq(0).hide();
		}
	});
	
	$("#bicycle").click(function(){
		if($(this).is(":checked")){
			$("li").eq(1).show();
		}else {
			$("li").eq(1).hide();
		}
	});
	
	$("#game").click(function(){
		if($(this).is(":checked")){
			$("li").eq(2).show();
		}else {
			$("li").eq(2).hide();
		}
	});
});
*/	
	
	


//---------------------------------------------------
//
//
//$(document).ready(function(){
//	$("li").mouseenter(function(){
//		$(this).css({"color": "white"});
//		$(this).css({"background": "black"});
//	});
//	
//	$("li").mouseleave(function(){
//		$(this).css({"color": "#efefef"});
//		$(this).css({"background": "white"});
//	});
//	
//	$("li").mouseleave(function(){
//		$("#p1").text(" ");
//
//	});
//	
//	$("#l01").mouseenter(function(){
//		$("#p1").text("공지사항을 선택하셨습니다.");
//
//	});
//	
//	$("#l02").mouseenter(function(){
//		$("#p1").text("이벤트를 선택하셨습니다.");
//
//	});
//
//	$("#l03").mouseenter(function(){
//		$("#p1").text("로그인을 선택하셨습니다.");
//	});
//	
//	$("#l04").mouseenter(function(){
//		$("#p1").text("회원가입을 선택하셨습니다.");
//	});
//	
//});

//---------------------------------------------------------

//var n=0;
//
//$(document).ready(function(){
//	$("img").mouseenter(function(){
//		$("p:first").show();
//		$("p:last").hide();
//	});
//	
//	$("img").mouseleave(function(){
//		$("p:last").show();
//		$("p:first").hide();
//	});
//});

//------------------------------------------------------


//$(document).ready(function(){
//
//	$("#q1_1").mouseup(function(){
//		$("#a1").hide();
//	});
//	
//	$("#q2_1").mouseleave(function(){
//		$("#a2").hide();
//	});
//	
//	$("#q1").mousedown(function(){
//		$("#a1").show();
//	});
//	
//	$("#q2").mouseenter(function(){
//		$("#a2").show();
//	});
//	
//	
//	$("#q1_1").mouseleave(function(){
//		$("#a1").hide();
//	});
//	
//	$("#q2_1").mouseleave(function(){
//		$("#a2").hide();
//	});
//	
//	$("#q1").mouseenter(function(){
//		$("#a1").show();
//	});
//	
//	$("#q2").mouseenter(function(){
//		$("#a2").show();
//	});
//});
