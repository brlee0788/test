/**
 * 
 */

//function check(){
//	if(login.l_id.value==""){
//		alert("ID를 입력해주세요.");
//		login.l_id.focus();
//		return false;
//	}
//	
//	if(login.l_id.value.length<5){
//		alert('아이디는 5자리 이상 입력해야 합니다.');
//		login.l_id.focus();
//		return false;
//	}
//}

 function check(){
//	if(login.age.value>=18){
//		alert("성인입니다.");
//		login.age.focus();
//		return false;
//	}else if(login.age.value<18){
//		alert("미성년자입니다.");
//		login.age.focus();
//		return false;
//	}else{
//		alert("숫자만 입력 가능합니다.");
//		login.age.focus();
//		return false;
//	}
	
//	if(login.gender.value==""){
//		alert("성별을 체크해주세요.");
//
//		return false;
//	}
//	
//	if(login.gender.value=="m"){
//		alert("남자입니다.");
//		location.href="http://www.naver.com";
//	}else {
//		alert("여자입니다.");
//		location.href="http://www.daum.net";
//	}
	 
	 // / : 정규표현식에서 처음을 뜻함
	 // ^ : 문장의 처음을 뜻함	
	 // [] : 대괄호 사이의 문자셋을 비교 
	 // [a-z] 소문자 a~z, [A-Z] 대문자 A~Z, [0-9] 숫자 0~9까지를 비교
	 // $ : 문장의 끝을 뜻함
	 // {} : 입력하는 문자열의 길이를 뜻함. {2,10} : 2~10까지의 길이를 말함
	 // 8자리 이상	{8,} 으로 표현 -> 8자리 이상이면 true 반환	
	 // *[@]{1} 모든 문자를 비교해서 @가 1개 이상 있어야 함
	 
	 // 소문자대문자 3자리에서 12자리까지 정규표현식 작성-> 	/[a-zA-Z]{3,12}$/
	 
//	 var id_num = /^[0-9]/;  -> 첫 번째 입력값만 숫자인지 아닌지 비교
//	 var id_num = /[0-9]$/;  -> 맨 마지막 입력값만 숫자인지 아닌지 비교 	 	
//	 var id_num = /^[0-9]{1,}$/;  -> 입력값의 모든 자리수가 숫자인지 아닌지 비교 	
	 	
	 	
	 var idchek = /^[a-zA-Z0-9]{4, 12}$/; //아이디 유효성
	 
	 var id_char = /^[a-zA-Z]{1,}$/; // 문자 비교 구문
	 var id_num = /^[0-9]{1,}$/;     // 숫자 비교 구문 
	 var id_spc = /^[~!@#$%^&*()_+|<>?]{1,}$/; // 특수문자 비교 구문
	 var id_kor = /^[가-힣]{1,}$/;    // 모든 형태 국문 비교
	 var id_all = /^[a-zA-Z가-힣0-9]{1,}$/;
	 
	 //  ad1201 
	
	 //국문 입력 비교
//	 if(!(id_kor.test(join.j_name.value))){
//		 alert('국만만 입력이 가능합니다.');
//		 join.j_name.vlaue="";
//		 join.j_name.focus();
//		 return false;
//	 }
	 
	 
	 
	 // 숫자만 입력 가능과 비교
	 if(!(id_num.test(join.j_id.value))){
		 alert("숫자만 입력이 가능합니다.");
		 join.j_id.value=""; 	    // 잘못 입력되었으므로 다시 입력 가능하게 빈칸으로 돌려줌
		 join.j_id.focus();
		 return false;
	 }else{
		 alert("숫자만 입력이 되었습니다.");
		 
	 }
	 
	 // 문자만 입력 가능과 비교
//	 if(!(id_char.test(join.j_id.value))){
//		 alert("문자만 입력이 가능합니다.");
//		 join.j_id.value ="";
//		 join.j_id.focus();
//		 return false;
//	 }else{
//		 alert("문자만 입력이 되었습니다.");
//	 }
	 
//		if(join.gender.value==""){
//		alert("성별을 체크해주세요.");
//	 	join.gender.value="m";
//		return false;
//	}
	 
//	 if(!(idcheck.test(login.age.value))){
//		 alert('아이디는 문자숫자만 가능');
//		 login.age.focus();
//		 return false;
//	 }
	 
	 
 }
	