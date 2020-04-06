<%@page import="java.net.URLEncoder"%>
<%@page import="jsp_0406.Student"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>학생 입력 저장</title>
		<style type="text/css">
			*{padding:0; margin:0;}
		
			table{border-collapse: collapse; margin:30px auto;}
			tr,th,td{border:1px solid black;}
			th{width:100px; height:35px;background: #efefef;}
			td{height:35px; text-align: center;}
			button {width: 150px; height: 30px;  margin: 0 auto;}
			div, h1 {text-align: center;}
			a{text-decoration: none; color: black;}
			a:visited {color: black;}
		
		</style>
	</head>
	<body>
		<%! ArrayList list = new ArrayList(); %>
		
		<%-- 회원추가 --%>
		<%
		 	request.setCharacterEncoding("utf-8");
			String s_num1 = request.getParameter("s_num");
			String s_name1 = URLEncoder.encode(request.getParameter("s_name"), "utf-8");
			int s_kor1 = Integer.parseInt(request.getParameter("s_kor"));
			int s_eng1 = Integer.parseInt(request.getParameter("s_eng"));
			int s_math1 = Integer.parseInt(request.getParameter("s_math"));

			list.add(new Student(s_num1,s_name1,s_kor1,s_eng1,s_math1));
		%>	
		
		<%-- 회원정보출력 --%>
		<h1>[학생성적처리]</h1>
		<table>
			<tr>
				<th>학번</th>
				<th>이름</th>
				<th>국어</th>
				<th>영어</th>
				<th>수학</th>
				<th>합계</th>
				<th>평균</th>
				<th>등수</th>
			</tr>
		<%
			for(int i=0; i<list.size();i++){
				Student stu1 = (Student)list.get(i);
		%>
		
			<tr>
				<td><a href="stu_modify.jsp?s_num=<%=stu1.getS_num() %>&s_name=<%=stu1.getS_name() %>
				&s_kor=<%=stu1.getS_kor() %>&s_eng=<%=stu1.getS_eng() %>&s_math=<%=stu1.getS_math() %>">
				<%=stu1.getS_num() %></a></td>
				<td><%=stu1.getS_name() %></td>
				<td><%=stu1.getS_kor() %></td>
				<td><%=stu1.getS_eng() %></td>
				<td><%=stu1.getS_math() %></td>
				<td><%=stu1.getS_total() %></td>
				<td><%=stu1.getS_avg() %></td>
				<td><%=stu1.getRank() %></td>
			</tr>
		<%
			}
		%>
		</table>
		<div>
		<button><a href="stu_inform.html">회원정보추가</a></button>
		<button><a href="stu_inform.html">처음 화면으로</a></button>	
		</div>		
	</body>
</html>