/**
 * http://roaming.kt.com/rental/kor/reserve2/reserve.asp의 폼체크하면 아래표 나오게 하는거 실습:>
 */
var count=0;
$(document).ready(function(){
	//체크박스를 체크
	$("#form_t input").click(function(){
		//클래스가 btntt인것의 index를 구해서 동일한 index의 h_table가 나타나고 사라지도록
		var index=$(".btntt").index(this);
		if($("#form_t input").is(":checked")){
			if(count==0){
				$("#sum_t").show();
			}
			if($(".h_table").eq(index).css("display") == "none"){
				count++;
				$(".h_table").eq(index).show();
			}else{
				count--;
				$(".h_table").eq(index).hide();
			}
		}
		else{
			$("#sum_t").hide();
			$(".h_table").hide();
			count=0;
		}
	});
	//x버튼을 누르면 아래표가 지워지게
	$(".btntt2").click(function(){
		var index2=$(".btntt2").index(this);
		$(".h_table").eq(index2).hide();
		$(".btntt").eq(index2).prop("checked",false);
		count--;
		if(count==0){
			$("#sum_t").hide();
		}
	});
	
});