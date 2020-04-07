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
			String id = request.getParameter("id");	
			String pw = request.getParameter("pw");
			
			if(id.equals("admin") && pw.equals("1234")){
				session.setAttribute("auth_User", id);
				session.setAttribute("nick_name", "stranger");
				response.sendRedirect("index.jsp");
			}else {
				response.sendRedirect("naver_login.html");
			}
		%>
		
	</body>
</html>