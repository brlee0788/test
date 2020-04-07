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
			String auth_User = (String)session.getAttribute("auth_User");
			if(auth_User==null){
				out.println("auth_User 세션이 없습니다.");
			}else{
				out.println(auth_User+"가 있습니다.");
			}
			
			session.invalidate();
		%>
		
		<a href="session_alldel.jsp">세션 모두 지우기</a>
	</body>
</html>