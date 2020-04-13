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
	
	String id, pw, name, phone= null;

%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		try{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "ora_user", "1234");
			stmt = conn.createStatement();
			String in1 = request.getParameter("search_id");
			String sql = "select * from member where id like '%"+in1+"%'";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				id = rs.getString("id");
				pw = rs.getString("pw");
				name = rs.getString("name");
				phone = rs.getString("phone");
				out.println("아이디: "+id+"<br>");
				out.println("패스워드: "+pw+"<br>");
				out.println("이름: "+name+"<br>");
				out.println("전화번호: "+phone+"<br>");
				out.println("-------------------------<br>");
			}
			out.println("<a href='form_01.html'>다시검색하기</a>");
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(rs !=null) rs.close();
				if(stmt !=null) stmt.close();
				if(conn !=null) conn.close();
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
	
	%>
	
</body>
</html>