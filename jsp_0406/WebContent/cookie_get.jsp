<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>[로그인 정보]</h2>
		<h3>쿠키에 저장되어 있는 모든 정보</h3>
		<%
		// 유저에서 서버로 넘어오는 것은 request (유저 컴퓨터에 저장되어 있는 것을 읽어오는 것) 
			Cookie[] cookies = request.getCookies();           // 쿠키는 300개까지 데이터 정보를 가질 수 있어서 배열로 받음 
		
			for(int i=0;i<cookies.length;i++){
				String str = cookies[i].getName(); 
				// 네이버 아이디가 있는지 없는지 확인
				if(str.equals("naver_id")){
					out.println("네이버 로그인이 되었습니다."+"<br>");
					out.println("네이버 아이디: "+cookies[i].getValue()+"<br>");
					continue;
				}
				out.println("--------------------------------<br>");
				out.println(cookies[i].getName()+" ");
				out.println(cookies[i].getValue()+"<br>");
			}
		%>
		
		<a href="cookie_del.jsp">쿠키 삭제</a>
	</body>
</html>