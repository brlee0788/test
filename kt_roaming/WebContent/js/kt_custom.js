/**
 * 
 */

$(document).ready(function() {
	
	var count=0;

	//체크박스와 연동해서 아래 테이블 보여주기
	$("#tb1 input").click(function(){
		var index = $(".btn").index(this);
		
		if($("#tb1 input").is(":checked")){
			$("#tb2").show();
			if($(".add_t").eq(index).css("display") == "none"){
				$(".add_t").eq(index).show();
				$(".DPrSim4").eq(index).val("");
				$("#add_0"+(index+1)).text("0");
				count++;
			}else {
				$(".add_t").eq(index).hide();
			}
		}else {
			$("#tb2").hide();
			$(".add_t").hide();
		}

	});
	
	// x 표시 누르면 해당 라인 삭제 & 체크박스 해제
	$(".del").click(function(){
		var index2 = $(".del").index(this);
		$(".add_t").eq(index2).hide();
		$("#tb1 input").eq(index2).prop("checked", false);
		$("#add_0"+(index2+1)).text("0");
		count--;
		
		if(count<1){
			$("#tb2").hide();
		}
	});
	
	// 수량 옵션 선택에 따른 함계 변화
	$(".DPrSim4").change(function(){
		var price = Number($(this).attr('name'));
		var index = $(".DPrSim4").index(this);
		var amount = Number($(".DPrSim4").eq(index).val());
	
		
		$("#add_0"+(index+1)).text(price*amount);

	});
	
	// 이용요금 합계
	$(".sum").on('DOMSubtreeModified', function(){
		var total_p =0;
		
		for(var i=0; i<5; i++){
			total_p += Number($("#add_0"+(i+1)).text());
		}
	
		$("#total").text(total_p);
		
	});
	

});