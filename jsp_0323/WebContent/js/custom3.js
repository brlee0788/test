/**
 * 
 */

function check1(){
	var id_check1 = /^[a-zA-Z]{4,12}$/;
	var id_pw1 = (/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^*()\-_=+\\\|\[\]{};:\'",.<>\/?]).{3,16}$/);	
	var id_name1 = /^[가-힣]{1,}$/
	var id_age1 = /^[0-9]{1,3}$/;
	var id_tel1 = /^[0-9]{8,}$/;
	
	//^(?=.*[a-z]) -> 1개씩 * 모든 문자에서 a-z가 있는지 확인
	
	
	if(join.j_id.value==""){
		alert('아이디를 입력하세요.');
		join.j_id.focus();
		return false;
	}
	
	if(!(id_check1.test(join.j_id.value))){
		alert('4~12자 소문자와 대문자만 입력 가능합니다.');
		join.j_id.value = "";
		join.j_id.focus();
		return false;
	}
	
	if(join.j_pw.value==""){
		alert('패스워드를 입력하세요.');
		join.j_pw.focus();
		return false;
	}
	
	if(!(id_pw1.test(join.j_pw.value))){
		alert('소문자, 대문자, 숫자, 특수문자 각각 최소 1개 이상 입력해야 합니다.');
		join.j_pw.value = "";
		join.j_pw.focus();
		return false;
	}
	
	if(join.j_pw2.value==""){
		alert('패스워드 확인란에 패스워드를 입력하세요.');
		join.j_pw2.focus();
		return false;
	}
	
	if(!(join.j_pw.value == join.j_pw2.value)){
		alert('패스워드가 다릅니다.')
		join.j_pw2.value = "";
		join.j_pw2.focus();
		return false;
	}
	
	if(join.j_name.value==""){
		alert('이름을 입력하세요.');
		join.j_name.focus();
		return false;
	}
	
	if(!(id_name1.test(join.j_name.value))){
		alert('1글자 이상 국문만 입력 가능합니다.');
		join.j_name.value = "";
		join.j_name.focus();
		return false;
	}
	
	if(join.j_age.value==""){
		alert('나이를 입력하세요.');
		join.j_age.focus();
		return false;
	}
	
	if(!(id_age1.test(join.j_age.value))){
		alert('1~3자리 숫자만 입력 가능합니다.');
		join.j_age.value="";
		join.j_age.focus();
		return false;
	}
	
	if(join.j_gender.value==""){
		alert('성별을 선택해주세요.');
		join.j_gender.value="m";
		return false;
	}
	
// 라디오 유효성검사 - Name의 값들을 모두 검색
	
//	var arraRadio = document.getElementsByName("gender");
//	var chk = false;
//	for(var i=0; i<arrRadio.length;i++){
//		if(arrRadio[i].checked)){
//			chk= true;
//		}
//	}
//	
//	if(!chk){
//		alert('체크를 확인해주세요.');
//		return false;
//	}
	
	
	if(join.j_tel.value==""){
		alert('전화번호를 입력하세요.');
		join.j_tel.focus();
		return false;
	}
	
	if(!(id_tel1.test(join.j_tel.value))){
		alert('8자리 이상 숫자만 입력 가능합니다.');
		join.j_tel.value="";
		join.j_tel.focus();
		return false;
	}
	
	var chk = false;
	for(var i=0; i<join.j_hobby.length;i++){
		if(join.j_hobby[i].checked){
			chk=true;
		}
	}
		
	if(!chk){
		alert('취미를 1개 이상 선택하세요.');
		join.j_hobby.focus();
		return false;
	}
	
	
}