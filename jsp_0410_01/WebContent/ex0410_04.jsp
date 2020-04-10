<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!

	Connection conn;
	Statement stmt;
	ResultSet rs;
	
	String product;
	String p_code;
	String p_name;
	String customer_name;
	String deposite;
	String phone;

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	h2{width: 1000px; font-size: 40px; margin: 10px auto;text-align: center;}
	table{width: 1000px; border-collapse: collapse; font-size: 15px; text-align: center; margin: 50px auto;}
	tr,th,td{border: 1px solid black;}
	th{background: #efefef; font-size: 18px;}
</style>
</head>
<body>
	<h2>악기대여 정보</h2>
	<table>
		<tr>
			<th>상품구분</th>
			<th>상품코드</th>
			<th>상품명</th>
			<th>임대인</th>
			<th>보증여부</th>
			<th>연락처</th>
		</tr>
	<%
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "ora_user", "1234");
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from instrument");
			
			while(rs.next()){
				product = rs.getString("product");
				p_code = rs.getString("p_code");
				p_name = rs.getString("p_name");
				customer_name = rs.getString("customer_name");
				deposite = rs.getString("deposite");
				phone = rs.getString("phone");
						
				out.println("<tr>");
				out.println("<td>"+product+"</td>");
				out.println("<td>"+p_code+"</td>");
				out.println("<td>"+p_name+"</td>");
				out.println("<td>"+customer_name+"</td>");
				out.println("<td>"+deposite+"</td>");
				out.println("<td>"+phone+"</td>");
				out.println("</tr>");
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(rs != null) rs.close();
				if(stmt != null) stmt.close();
				if(conn != null) conn.close();
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
		
	%>
		
	</table>

</body>
</html>