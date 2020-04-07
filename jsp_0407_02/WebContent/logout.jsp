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
			// 저장한 쿠키 정보 삭제 후, index1  페이지로 이동
			Cookie[] cookie_chk = request.getCookies();
				
			for(int i=0;i<cookie_chk.length;i++){
				if(cookie_chk[i].getName().equals("naverUser")){
					cookie_chk[i].setMaxAge(0);
					response.addCookie(cookie_chk[i]);
				}
				if(cookie_chk[i].getName().equals("nick_name")){
					cookie_chk[i].setMaxAge(0);
					response.addCookie(cookie_chk[i]);
				}
			}
			response.sendRedirect("index1.jsp");
		%>
	
	</body>
</html>