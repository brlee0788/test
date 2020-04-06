<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>메인 메뉴가 있는 메인페이지 입니다.</h1>
		<jsp:forward page="sub.jsp" />   <!-- 중간에 param 태그 넣지 않을거면 </jsp.forward> 생략가능 -->
	</body>
</html>