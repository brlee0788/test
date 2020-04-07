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
			String name1 = request.getParameter("f_name");
			String value1 = request.getParameter("f_value");
			String name2 = request.getParameter("f_name2");
			String value2 = request.getParameter("f_value2");
		
			session.setAttribute(name1, value1);
			session.setAttribute(name2, value2);
		%>
		<h2>섹션 저장 완료</h2>
		<a href="form3.jsp">섹션 보기</a>
	</body>
</html>