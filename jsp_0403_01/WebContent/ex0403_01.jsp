<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* 	table{font-size: 20px; border-collapse: collapse; */
/* 		  border-top: 2px solid black;} */
/* 	tr, td{border-bottom:1px solid #efefef;} */
/* 	tr:nth-child(1){text-align: center; font-weight: bold;} */
/* 	td:nth-child(1) {width: 100px; height: 20px;} */
/* 	td:nth-child(2) {width: 300px;} */
	
	table{font-size: 20px; border-collapse: collapse;text-align: center; }
	tr, td{border:1px solid #efefef;}
	tr:nth-child(1){font-weight: bold;}
	td:nth-child(1) {width: 100px; height: 20px;}
	td:nth-child(2) {width: 100px;}
	td:nth-child(3) {width: 100px;}
</style>
</head>
<body>
	<!-- html 주석: html 소스 보기에서 나타남 -->
	<%-- jsp 주석: html 소스 보기에는 나타나지 않음 --%>
<%--  
	<h1>구구단 출력</h1>	
 	<table> 
		<% 
 			int i=0;
 			out.println("<tr>");
 			out.print("<td>단</td>");
 			out.print("<td>계산식</td>");	
 			out.println("</tr>");
 			for(i=2; i<=3;i++){
 				for(int j=1; j<=9; j++){
 					out.println("<tr>");
 					out.print("<td>"+i+"단"+"</td>");
 					out.print("<td>"+i+" * "+j+" = "+i*j+"</td>");		
 					out.println("</tr>");
 				}
 			}
 		%> 
 	</table> 

	<table>
		<tr>
			<td>범위</td>
			<td>더하기</td>
			<td>곱하기</td>
		</tr>
		<tr>
		<td>1~10</td>
		<%!
			int sum=0;
			double mult = 1;
		%>
		<% 
			for(int i=1; i<=10; i++){
				sum += i;
			}
			out.println("<td>"+sum+"</td>");
			for(int i=1; i<=10; i++){
				mult = mult * i;
			}
			out.println("<td>"+mult+"</td>");
		%>
		</tr>
			<tr>
		<td>1~100</td>

		<% 
			for(int i=1; i<=100; i++){
				sum += i;
			}
			out.println("<td>"+sum+"</td>");
			for(int i=1; i<=100; i++){
				mult = mult * i;
			}
			out.println("<td>"+mult+"</td>");
		%>
		</tr>
		<tr>
		<td>1~50</td>
		<% 
			for(int i=1; i<=50; i++){
				sum += i;
			}
			out.println("<td>"+sum+"</td>");
			for(int i=1; i<=50; i++){
				mult = mult * i;
			}
			out.println("<td>"+mult+"</td>");
		%>
		</tr>
	</table>	
--%>	

	<%!
		int sum1=0;
		double mult4=1;
	%>
	
	<%!
		public int sum(int a, int b){
			for(int i=a; i<=b; i++){
				sum1 += i;
			}
		return sum1;
		}
	
		public double mult(int a, int b){
			for(int i=a; i<=b; i++){
				mult4 *= i;
			}
			return mult4;
		}
	%>
	
	<table>
		<tr>
			<td>범위</td>
			<td>더하기</td>
			<td>곱하기</td>
		</tr>
		<tr>
		<td>1~10</td>
		<td><%=sum(1,10) %></td>
		<td><%=mult(1,10) %></td>
		</tr>
		<tr>
		<td>1~100</td>
		<td><%=sum(1,100) %></td>
		<td><%=mult(1,100) %></td>
		</tr>
		<tr>
		<td>1~50</td>
		<td><%=sum(1,50) %></td>
		<td><%=mult(1,50) %></td>
		</tr>
		
</body>
</html>