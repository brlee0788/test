/**
 * 
 */

	function id_ch(){
		window.open("join_id_pop.html", "id_check", "width=600, height=400px, resizable=no, scrollbars=no");
	}

	function e_select(val){
		
		if($("#email_select").val()=="self"){
			$("#email_1").removeAttr("readonly");
			$("#email_1").val("");
		}else{
			$("#email_1").attr("readonly","readonly");
			$("#email_1").val(val);
		}
	}
	
	

	function check(){
		var name_chk= /^[가-힣]{1,}$/;
		var id_chk = /^[a-zA-Z][a-zA-Z0-9_]{3,16}$/;
		
		var pw_chk1 = /^(?=.*[a-zA-Z]).+$/; //영문이 하나라도 있는지~
		var pw_chk2 = /^(?=.*[0-9]).+$/; //숫자가 하나라도 있는지~
		var pw_chk3 = /^(?=.*[~!@#$%^&*()_+|{}<>?]).+$/; //특문이 하나라도 있는지~
 		var cnt = 0; //몇개나 사용했는지
 		
 		var email_chk = /^(?=.*[.]{1}).+$/;
 		var email_chk1 = /^[0-9a-z.]{1,}$/;
 		var tel_chk = /^[0-9]{1,}$/;
		
		//이름
		if(join.name.value==""){
			alert("이름을 입력해주세요.");
			return false;
		}
		if(!(name_chk.test(join.name.value))){
			alert("국문, 1자리 이상 입력하세요.");
			join.name.focus();
			return false;
		}
		
		//아이디
		if(join.id.value==""){
			alert("아이디를 입력해주세요.");
			return false;
		}
		if(!(id_chk.test(join.id.value))){
			alert("4~16자리의 영문, 숫자, 특수기호(_)만 사용하실 수 있습니다.(첫 글자는 영문)");
			join.id.focus();
			return false;
		}
		
		
		
		//비밀번호
		var pw = document.getElementById("pw");
		var pw2 = document.getElementById("pw2");
		
		
		if(pw.value==""){
			alert("비밀번호를 입력하세요.");
		}
		
		if(pw_chk1.test(pw.value)){
			cnt++;
		}
		if(pw_chk2.test(pw.value)){
			cnt++;
		}
		if(pw_chk3.test(pw.value)){
			cnt++;
		}
		
		if(cnt==0||cnt==1){
			alert("영문, 숫자, 특수문자 중 2종류 조합 시 10자리 이상 입력 " +
					"영문, 숫자, 특수문자 모두 조합 시 8자리 이상 입력");
			pw.value="";
			return false;
		}else if((cnt==2)&&(pw.value.length<10)){
				alert("영문, 숫자, 특수문자 중 2종류 조합 시 10자리 이상 입력하세요");
				pw.value="";
				return false;
		}else if((cnt==3)&&(pw.value.length<8)){
				alert("영문, 숫자, 특수문자 모두 조합 시 8자리 이상 입력");
				pw.value="";
				return false;
		}
		
		
		if(pw2.value==""){
			alert("비밀번호를 한번 더 입력해주세요.");
			pw2.focus();
			return false;
		}
		
		if(!(pw.value==pw2.value)){
			alert("비밀번호가 일치하지 않습니다.");
			pw.value="";
			pw2.value="";
			pw.focus();
			return false;
		}
		
		//이메일
		if(join.email_id.value=="" || $("#email_1").val()==""){
			alert("이메일을 입력해주세요.");
			return false;
		}
		if(!(email_chk.test(join.email_1.value) && email_chk1.test(join.email_1.value))){
			alert("올바른 이메일 형식이 아닙니다.");
			return false;
		}
		
		var email = $("#email_id").val()+"@"+$("#email_1").val();
		$("#email").val(email);
		
		
		//휴대전화
		if($("#phone1").val()==""||$("#phone2").val()==""||$("#phone3").val()==""){
			alert("전화번호를 입력해주세요.");
			$("#phone1").val("");
			$("#phone2").val("");
			$("#phone3").val("");
			$("#phone1").focus();
			return false;
		}
		
		for (var i = 0; i < 3; i++) {
			if(!(tel_chk.test($("#phone"+(i+1)).val()))){
				alert("숫자만 입력 가능합니다.");
				join.phone1.value="";
				join.phone2.value="";
				join.phone3.value="";
				join.phone1.focus();
				return false;
			}
		}
		
		//모두 일치하여 여기까지 오면 전화번호 hidden값
		join.phone.value= $("#phone1").val()+$("#phone2").val()+$("#phone3").val();
		
		
		if($("#year").val()=="" || $("#year").val()=="select"){
			alert("년도를 선택하세요.");
			return false;
		}
		if($("#month").val()=="" || $("#month").val()=="select"){
			alert("월을 선택하세요.");
			return false;
		}
		if($("#day").val()=="" || $("#day").val()=="select"){
			alert("일을 선택하세요.");
			return false;
		}
		
		if(!($("input[name='gender']").is(":checked"))){
			alert("성별을 선택해 주세요.");
			return false;
		}
		
		
		
		join.submit();
		
		//test
		
		
	}