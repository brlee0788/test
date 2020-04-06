<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- 모든 쿠키 삭제 후 다시 쿠키 읽어오기-->	
		<%
			Cookie[] c = request.getCookies();
		
			if(c !=null){
				out.println("남아있는 쿠키가 있습니다.");
			}else{
				out.println("남아있는 쿠키가  없습니다.");
			}
		
		%>
	</body>
</html>