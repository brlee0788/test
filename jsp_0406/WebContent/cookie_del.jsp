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
			Cookie[] cookies = request.getCookies();
			for(int i=0; i<cookies.length;i++){
				if(cookies[i].getName().equals("naver_id")){
					cookies[i].setMaxAge(0);        // 0초를 넣으면 쿠키 삭제와 같음
					response.addCookie(cookies[i]);
				}
			}
		%>
		
		<a href="cookie_test.jsp">쿠키 확인</a>
	</body>
</html>