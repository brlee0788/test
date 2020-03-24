/**
 * 
 */

function check(){
	//아이디 - 첫째짜리는 영문만, 나머지는 영문, 숫자 입력 가능 (최소 3자~최대 15자)
	var id_check = /^[a-zA-Z][a-zA-Z0-9]{2,14}$/; 
	//이름 - 국문만 최소 1자 이상
	var name_check = /^[가-힣]{1,}$/;  // /^[가-힣]*$/ -> *는 모든 자리수를 확인해준다는 의미이며, 입력값이 없어도 무관
	var age_check = /^[0-9]{1,3}$/;
	var pw_check = (/(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^*()\-_=+\\\|\[\]{};:\'",.<>\/?]).{3,16}$/);
	
	// 아이디 유효성 검사
	if(join.j_id.value==""){
		alert('아이디를 입력해주세요.');
		join.j_id.focus();
		return false;    // return false가 없으면 다음 구문으로 그냥 넘어가게 됨. 
	}
	
	if(!(id_check.test(join.j_id.value))){
		alert('아이디는 3자리 이상 문자와 숫자만 가능합니다.');
		join.j_id.value="";
		join.j_id.focus();
		return false;
	}
	
	// 패스워드 유효성 검사
	if(join.j_pw.value==""){
		alert('패스워드를 입력해주세요.');
		join.j_pw.focus();
		return false;
	}
	
	if(!(pw_check.test(join.j_pw.value))){
		alert('소문자, 대문자, 숫자, 특수문자를 1개 이상씩 3자리 이상 입력해주세요.');
		join.j_pw.focus();
		return false;
	}
	
	// 패스워드 확인 일치 검사
	if(!(join.j_pw.value==join.j_pw2.value)){
		alert('패스워드가 일치하지 않습니다. 다시 입력해주세요.');
		join.j_pw.focus();
		return false;
	}
	
	// 이름 유효성 검사
	if(join.j_name.value==""){
		alert('이름을 입력해주세요.');
		join.j_name.focus();
		return false;
	}
	
	if(!(name_check.test(join.j_name.value))){
		alert('한글 1자리 이상만 입력이 가능합니다.');
		join.j_name.focus();
		return false;
	}
	
	// 나이 유효성 검사
	if(!(age_check.test(join.j_age.value))){
		alert('숫자만 최대 3자리까지 입력이 가능합니다.');
		join.j_age.focus();
		return false;
	}
	
	return join.submit(); // 유효성 검사 완료되면 join이름을 갖는 form이 action에 있는 주소로 넘어감
	
	
	
	
}