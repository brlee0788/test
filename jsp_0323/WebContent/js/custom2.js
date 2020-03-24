/**
 * 
 */

function check(){
	
	var id_check = /^[a-zA-Z]{4,}$/;  // /^[a-zA-Z]+$/ 로 표현도 가능
	var id_age = /^[0-9]+$/;
	var id_spc = /^[a-z~!@#$%^&*_+|()<>?]+$/;
	
	if(join.j_id.value==""){
		alert('아이디를 입력해주세요.');
		join.j_id.focus();
		return false;
	}
	
	if(!(id_spc.test(join.j_id.value))){
		alert('소문자와 특수문자만 입력이 가능합니다.');
		join.j_id.value="";
		join.j_id.focus();
		return false;
	}
	
//	if(!(id_age.test(join.j_age.value))){
//		alert('숫자만 입력이 가능합니다.');
//		join.j_age.focus();
//		return false;
//	}
	
	
	if(join.j_name.value==""){
		alert('이름을 입력하세요.');
		join.j_name.focus();
		return false;
	}
	
}