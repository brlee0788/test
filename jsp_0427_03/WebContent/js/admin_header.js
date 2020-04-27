/**
 * 
 */

$(document).ready(function() {
//	$(".sub_list").hide();
	
	$("#student").children("a").eq(0).click(function() {
		$("#stu_list").slideToggle();
		
		if($("#s_icon").attr("class")=="icon_minus"){
			$("#s_icon").attr("class","icon_plus");
		}else{
			$("#s_icon").attr("class","icon_minus");
		}
	});
	
	
	$("#teacher").children("a").eq(0).click(function() {
		$("#tes_list").slideToggle();
		if($("#t_icon").attr("class")=="icon_minus2"){
			$("#t_icon").attr("class","icon_plus2");
		}else{
			$("#t_icon").attr("class","icon_minus2");
		}
	});
	$("#menu ul li").hover(function() {
		$(this).children("ul").css("visibility","visible");
	}, function() {
		$(this).children("ul").css("visibility","hidden");
	})
	
	
	$(".sub_list li").hover(function() {
		$(this).css("background-color","#dddddd");
	}, function() {
		$(this).css("background-color","#efefef");
	})
	
	$(".user ul li").hover(function() {
		$(this).css("font-weight","bold");
	}, function() {
		$(this).css("font-weight","normal");
	})
	
	
//	
//	$("#menu ul li").hover(function() {
//	});
//	$("#menu ul li").mouseleave(function() {
//	});
//	
////	$("#menu ul li").hover(function() {
////		$(this).find("ul").slideToggle("fast");
////	});
//	
//	$(".sub_list li").hover(
//		$(this).css("background-color","#dddddd");
//	);
//	
});

