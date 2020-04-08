<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="join1" class="com.javalec.ex.Join" scope="page" />
<jsp:setProperty name="join1" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원정보</h2>
	이름: <%=join1.getName() %><br>
	아이디: <%=join1.getId() %><br>
	패스워드: <%=join1.getPw() %><br>
	<%! String gen, add; %>
	<%
		gen = join1.getGender();
		
		switch(gen){
			case "male":
				gen = "남성";
				break;
			case "female":
				gen = "여성";
				break;
		}
		
		add = join1.getAddress();
		
		switch(add){
			case "seoul":
				add ="서울";
				break;
			case "gyeonggi":
				add ="경기";
				break;
			case "busan":
				add ="부산";
				break;
			case "incheon":
				add ="인천";
				break;
		}
	%>
	성별: <%=gen %><br>
	주소: <%=add %><br>
</body>
</html>