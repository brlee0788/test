<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			function chk1(select_v){
				if(select_v=="s_search"){
					form.name.setAttribute('type','hidden');
					form.salary1.setAttribute('type','text');
					form.salary2.setAttribute('type','text');
				}else if(select_v=="n_search"){
					form.name.setAttribute('type','text');
					form.salary1.setAttribute('type','hidden');
					form.salary2.setAttribute('type','hidden');
				}
			}
		
			function chk(){
				var name_chk = /^[a-zA-Z]+$/;
				var salary_chk = /^[0-9]+$/;
				var s1 = parseInt(form.salary1.value);
				var s2 = parseInt(form.salary2.value);
				
				if(form.search_t.value=="n_search"){
					if(form.name.value==""){
						alert("이름을 입력해주세요.");
						form.name.focus();
						return false;
					}
					
					if(!(name_chk.test(form.name.value))){
						alert("이름에는 영문만 입력 가능합니다.");
						form.name.value="";
						form.name.focus();
						return false;
					}
				}
				if(form.search_t.value=="s_search"){
					if(form.salary1.value=="" ||form.salary2.value=="" ){
						alert("월급 범위를 입력해주세요.");
						form.salary1.focus();
						return false;
					}
					
					if(!(salary_chk.test(form.salary1.value))){
						alert("월급에는 숫자만 입력 가능합니다.");
						form.salary1.value="";
						form.salary1.focus();
						return false;
					}
					
					if(!(salary_chk.test(form.salary2.value))){
						alert("월급에는 숫자만 입력 가능합니다.");
						form.salary2.value="";
						form.salary2.focus();
						return false;
					}
					
					if(s1>s2){
						alert("앞에 입력하는 숫자가 더 작아야 합니다.");
						form.salary1.value="";
						form.salary2.value="";
						form.salary1.focus();
						return false;
					}
				}
				
				return form.submit();
			}
		
		</script>
	</head>
	<body>
	<h2>회원정보 검색</h2>
		<form action="ex0413_02.jsp" name="form" method="post">
			<select name="search_t" onchange="chk1(this.value)">
				<option value="n_search">이름검색</option>
				<option value="s_search">월급검색</option>
			</select> <br>
			검색 이름: <input type="text" name="name"><br>
			월급 범위: <input type="hidden" name="salary1">부터
				<input type="hidden" name="salary2">까지<br> 
				<input type="button" onclick="chk()" value="검색">	
		</form>

	</body>
</html>