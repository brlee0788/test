<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>만들고 싶은 쿠키</h2>
		<!-- 쿠키 저장 -->
		<%
			Cookie coo1 = new Cookie("name", "홍길동");
			coo1.setMaxAge(60*30);
			response.addCookie(coo1);
		
		%>
		
		<a href="form2.jsp">만들기</a>
	</body>
</html>