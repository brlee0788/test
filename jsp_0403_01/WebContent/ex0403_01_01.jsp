<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{border-collapse:collapse; font-size: 15px;}
	tr,td{border: 1px solid black;}
	td:nth-child(1) {width: 100px; height: 20px;}
	td:nth-child(2) {width: 60px; height: 20px;}
</style>
</head>
<body>
	<%!
		int sum=0;
		double mult=1;
	%>
	<%
		int start = Integer.parseInt(request.getParameter("start"));
		int end = Integer.parseInt(request.getParameter("end"));
	%>

	<table>
		<tr>
			<td>범위</td>
			<td>더하기</td>
			<td>곱하기</td>
		</tr>
		<tr>
			<td>
			<%
				out.println(start+"~"+end);
			%>
			</td>
			<td>
			<% 
				sum=0;
				for(int i=start; i<=end; i++){
					sum += i;
				}
			out.println(sum);
			%>
			</td>
			<td>
			<% 
				mult=1;
				for(int i=start; i<=end; i++){
					mult *= i;
				}
			out.println(mult);
			%>
			</td>
		</tr>
	</table>

</body>
</html>