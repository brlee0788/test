<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>관리자로 로그인이 되었습니다.</h3>
	<p>아이디: <%=request.getParameter("id")%></p><br>
	<p>이름: <%=request.getParameter("name")%></p>
</body>
</html>