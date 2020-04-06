<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- 모든 쿠키 삭제 -->
		<%
			Cookie[] c = request.getCookies();
		
			for(int i=0; i<c.length; i++){
				c[i].setMaxAge(0);
				response.addCookie(c[i]);
			}
		%>
		
		<a href="form3.jsp">쿠키 삭제 후 확인</a>
	</body>
</html>