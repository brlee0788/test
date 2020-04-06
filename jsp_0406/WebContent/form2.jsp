<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>저장된 쿠키</h2>
		<!-- 쿠키 읽어오기 -->
		<%
			Cookie[] c = request.getCookies();
		
			for(int i=0;i<c.length;i++){
				if(c[i].getName().equals("name")){
				out.println(c[i].getName()+": "+c[i].getValue()+"<br>");
				}
			}
		
		%>
		
		<a href="form1_del.jsp">모든 쿠키 삭제</a>
	</body>
</html>