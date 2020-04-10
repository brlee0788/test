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
	
	int s_num;
	int grade;
	String name;
	String pay;
	String subject;
	int price;
	String payment_type;

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{width:1000px; border-collapse: collapse; margin: 50px auto;
		  font-size: 15px; text-align: center;}
	tr,th,td{border: 1px solid black}
</style>
</head>
<body>
	<table>
		<tr>
			<th>번호</th>
			<th>학년</th>
			<th>이름</th>
			<th>납부여부</th>
			<th>과목</th>
			<th>금액</th>
			<th>납부유형</th>
		</tr>
		
		<%
			try{
				
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "ora_user", "1234");
				stmt = conn.createStatement();
				String sql1 = "select * from member3";
				rs = stmt.executeQuery(sql1);
				
				while(rs.next()){
					s_num = rs.getInt("s_num");
					grade = rs.getInt("grade");
					name = rs.getString("name");
					pay = rs.getString("pay");
					subject = rs.getString("subject");
					price = rs.getInt("price");
					payment_type = rs.getString("payment_type");
					
					out.println("<tr>");
					out.println("<td>"+s_num+"</td>");
					out.println("<td>"+grade+"</td>");
					out.println("<td>"+name+"</td>");
					out.println("<td>"+pay+"</td>");
					out.println("<td>"+subject+"</td>");
					out.println("<td>"+price+"</td>");
					out.println("<td>"+payment_type+"</td>");
					out.println("</tr>");
				}
				
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				try{
					if(rs != null) rs.close();
					if(stmt != null)stmt.close();
					if(conn != null)conn.close();
					
				}catch(Exception e2){
					e2.printStackTrace();
				}
			}
		
		%>
	
	</table>

</body>
</html>