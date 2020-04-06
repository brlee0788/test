<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<jsp:forward page="param.jsp">
			<jsp:param name="id" value="admin" />
			<jsp:param name="pw" value="1234" />
			<jsp:param name="name" value='<%=URLEncoder.encode("홍길동", "utf-8") %>' />
		</jsp:forward>
	</body>
</html>