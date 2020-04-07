<%@page import="java.util.Enumeration"%>
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
			String del = request.getParameter("del_s");
			session.removeAttribute(del);
						
			String name1 = (String)session.getAttribute(del);
			if(name1==null){
				out.println("섹션이 삭제 되었습니다.");
			}else{
				out.println(name1+"가 있습니다.");
			}
			
			session.invalidate();
		%>
		<br>
		<a href="form5.jsp">섹션 모두 지우기</a>
	</body>
</html>