/**
 * 
 */

/*
	제이쿼리 함수 : $(선택자).메소드
	
	$("p").hide() : 모든 <p> 요소를 찾아서 감춤
	$("p").show() 
	$(".group").hide() : class="group"인 요소를 찾아서 감춤
	$("#group").hide() : id="group"인 요소를 찾아서 감춤
*/

$(document).ready(function(){         // html 화면을 다 읽고 나서 function을 실행하라는 의미

//	$("li").click(function(){
//		$(this).css({"color":"red"});
//	})
	
	$("li").click(function(){
		$(this).hide();
	})
	
	
//	$("#l01").click(function(){
//		$("#l01").css({"color": "red"});
//	});
//	
//	$("#l02").click(function(){
//		$("#l02").css({"color": "yellow"});
//	});
//	
//	$("#l03").click(function(){
//		$("#l03").css({"color": "green"});
//	})
//	
//	$("#l04").click(function(){
//		$("#l04").css({"color": "pink"});
//	})
//	
//	$("#l05").click(function(){
//		$("#l05").css({"color": "purple"});
//	})
	
	
	
	
//	$("#btn01").click(function(){
//		$("p").hide();
//	});
//	
//	$("#btn02").click(function(){
//		$("p").show();
//	});
//	
//	$("#btn03").click(function(){
//		$("img").hide();
//	});
//	
//	$("#btn04").click(function(){
//		$("img").show();
//	});
	
});

