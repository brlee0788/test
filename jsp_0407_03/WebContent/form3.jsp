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
			String s_n;
			String s_v;
			Enumeration enu1 = session.getAttributeNames();
			while(enu1.hasMoreElements()){
				s_n = enu1.nextElement().toString();
				s_v = session.getAttribute(s_n).toString();
				out.println("name - "+s_n+" / ");
				out.println("value - "+s_v+"<br>");
			}
		
			out.println("---------------------------------------------------<br>");
			
			int interval = session.getMaxInactiveInterval();
			out.println("섹션 유효시간: "+interval+"<br>");
			
		%>
		<br>
		<form action="form4.jsp" name="del" method="post">
			삭제할 섹션: <input type="text" name="del_s">
			<input type="submit" value="삭제">
		</form>
	
	</body>
</html>