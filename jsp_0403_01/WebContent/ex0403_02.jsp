<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{border-collapse: collapse;}
	tr, td{border: 1px solid black;}
	td{width: 100px; height:20px; padding-left:3px;}
	td:first-child{font-weight: bold;}
	

</style>
</head>
<% request.setCharacterEncoding("utf-8"); %>
<body>
	<%!
		
	%>

	<%
		String hak_num = request.getParameter("hak_num");
		String name = request.getParameter("name");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
		
		int total = kor+eng+math;
		double avg= (double)total/3.0;	
		int[]arr={1,2,3};
		out.println(Arrays.toString(arr));
	%>
	
	<table>
		<tr>
			<td>학번</td>
			<td><%=hak_num%></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=name%></td>
		</tr>
		<tr>
			<td>국어</td>
			<td><%=kor%></td>
		</tr>
		<tr>
			<td>영어</td>
			<td><%=eng%></td>
		</tr>
		<tr>
			<td>수학</td>
			<td><%=math%></td>
		</tr>
		<tr>
			<td>합계</td>
			<td><%=total%></td>
		</tr>
			<tr>
			<td>평균</td>
			<td><%=avg%></td>
		</tr>	
	
	</table>
</body>
</html>