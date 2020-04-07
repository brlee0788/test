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
			
			// DB로 이동해서 아이디와 패스워드 체크하게 됨. 확인 결과 값을 리턴 
			if(id.equals("admin") && pw.equals("1234")){
				Cookie cookie1 = new Cookie("naverUser",id);
				cookie1.setMaxAge(1800);
				response.addCookie(cookie1);
				Cookie cookie2 = new Cookie("nick_name", "goldstar");
				cookie1.setMaxAge(1800);
				response.addCookie(cookie2);
				response.sendRedirect("index1.jsp");
			}else{
		%>
		<script type="text/javascript">alert("아이디/패스워드가 일치하지 않습니다.\n 다시 로그인해주세요.");</script>
		<%
			response.sendRedirect("naver_login.html");
			}
		%>
	</body>
</html>