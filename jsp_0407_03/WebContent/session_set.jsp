<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			session.setAttribute("auth_User", "admin");
			session.setAttribute("naver_id", "admin");
			session.setAttribute("pw", 1234);  			// 객체로 저장되기 때문에 꼭 string 형태로 넣지 않아도 된다. -> 1234로 그냥 기입해도 됨 (""없이)
			session.setAttribute("nick_name", "stranger");
		%>
		<h2>섹션이 저장 되었습니다.</h2>
		<a href="session_get.jsp">섹션 보기</a>
	</body>
</html>