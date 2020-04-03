<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			function check1(){
				if(login.id.value==""){
					alert("아이디를 입력하세요.");
					login.id.focus();
					return false;
				}else if(login.pw.value==""){
					alert("패스워드를 입력하세요.");
					login.pw.focus();
					return false;
				}
				return login.submit();
			}
		</script>
		
	</head>
	<body>
		<%
			if(!(request.getParameter("id")==null)){
				out.println(request.getParameter("id")+"가 잘못 입력되었습니다.<br> 다시 한번 확인해주세요.<br>");
			}
	
		%>
		<form action="login_check.jsp" name="login" method="get">
			아이디<input type="text" name="id"><br>
			패스워드<input type="password" name="pw"><br>
			이름<input type="text" name="name"><br>
			<input type="button" onclick="check1()" value="로그인">
		</form>
	
	</body>
</html>