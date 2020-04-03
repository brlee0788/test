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
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = URLEncoder.encode(request.getParameter("name"), "utf-8");  // 한글이 깨져서 나오는 경우
		
		if(id.equals("admin") && pw.equals("777")){
			response.sendRedirect("login_ok.jsp?id="+id+"&name="+name);
		}else{
			response.sendRedirect("login.jsp?id="+id);
		}
	
	%>

</body>
</html>