<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{width: 600px; font-size: 20px;
		  border-collapse: collapse;
		  border: 1px solid black;}
	tr,td{border: 1px solid black;}
	td:nth-child(1) {width: 200px; height: 20px;}
	td:nth-child(2) {width: 200px;}
</style>
</head>
<% request.setCharacterEncoding("utf-8"); %>
<body>
	<h1>회원가입</h1>
	<form action="" name="form" method="post">
		<table>
			<tr>
				<td>아이디</td>
				<td><%= request.getParameter("id") %></td>
				<!-- 
				<td><% out.println(request.getParameter("id")); %></td>
				 -->
			</tr>
			
			<tr>
				<td>패스워드</td>
				<td><%= request.getParameter("pw") %></td>
			</tr>
	
			<tr>
				<td>이름</td>
				<td><%= request.getParameter("name") %></td>
			</tr>
			
			<tr>
				<td>취미</td>
				<td><% 
					String[] hobby = request.getParameterValues("hobby");	
					for(int i=0; i<hobby.length; i++){
						switch(hobby[i]){
							case "read":
								hobby[i] = "독서";
							break;
							
							case "cook":
								hobby[i] = "요리";
							break;
							
							case "run":
								hobby[i] = "조깅";
							break;
							
							case "swim":
								hobby[i] = "수영";
							break;
									
						}
					}
					out.println(Arrays.toString(hobby)); %></td>
			</tr>
			
			<tr>
				<td>전공</td>
				<td><% 
					String major = request.getParameter("major");
					switch(major){
						case "kor":
							major = "국어국문학과";
						break;
						
						case "eng":
							major = "영어영문학과";
						break;
						
						case "math":
							major = "수학과";
						break;
						
						case "design":
							major = "디자인학과";
						break;
					}
					out.println(major); %></td>
			</tr>
			
			<tr>
				<td>주소</td>
				
				<td><% 
					String address = request.getParameter("address");
					switch(major){
						case "seoul":
							address = "서울";
						break;
						
						case "busan":
							address = "부산";
						break;
						
						case "incheon":
							address = "인천";
						break;
					}
				    out.println(address); %></td>
			</tr>
		</table>
	</form>

</body>
</html>