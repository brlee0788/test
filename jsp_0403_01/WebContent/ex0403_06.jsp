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
			String age = request.getParameter("age");
			int age1 = Integer.parseInt(age);
		
			if(age1>19){
				// 페이지 이동 - 파라미터 값으로 age 넘겨줌
				response.sendRedirect("pass.jsp?age="+age1);
			}else{
				response.sendRedirect("error.jsp?age="+age1);
			}
		%>
	</body>
</html>