<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>쿠키 3개가 저장 되었습니다. 읽기를 클릭해주세요.</h2>
		<%
			Cookie cookie = new Cookie("naver_id", "admin");
			cookie.setMaxAge(60*30); // 60초 * 30 = 1800초 = 30분
			response.addCookie(cookie); // response 객체에 쿠키 탑재 (서버에서 유저로 보낸건 response)
			
			Cookie cookie2 = new Cookie("naver_pw", "admin1234");
			cookie2.setMaxAge(60*30);
			response.addCookie(cookie2);
			
			Cookie cookie3 = new Cookie("nick_name", "koitt");
			cookie3.setMaxAge(60*30);
			response.addCookie(cookie3);
		%>
		
		<a href="cookie_get.jsp">쿠키정보 읽기</a>
	</body>
</html>