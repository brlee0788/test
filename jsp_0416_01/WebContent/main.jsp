<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String authUser = (String) session.getAttribute("authUser");
	if(authUser==null){
		out.println("<script>alert('로그인이 되어 있지 않습니다. 로그인을 해주세요.');");
		out.println("location.href='login.jsp';</script>");
	}
%>
<%!
	Connection conn=null;
	Statement stmt=null;
	ResultSet rs=null;
	
	String id,pw,name,email,address,phone,news,sms,gender;
	Timestamp birth;
	String sql;

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			table{witdh:1500px; border-collapse: collapse;}
			tr,th,td{border:1px solid black;}
			td{text-align: center}
		</style>
	</head>
	<body>	
		<h2>회원전체 리스트</h2>
		<p><a href="join.jsp">회원정보추가</a></p>
				<table>
					<tr>
						<th>회원 아이디</th>
						<th>패스워드</th>
						<th>이름</th>
						<th>이메일</th>
						<th>주소</th>
						<th>휴대전화</th>
						<th>생년월일</th>
						<th>성별</th>
						<th>뉴스레터 수신여부</th>
						<th>SMS 수신여부</th>
					</tr>
		<%
			try{
				sql="select * from lms_member";
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "ora_user", "1234");
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);

				while(rs.next()){
					id=rs.getString("id");
					pw=rs.getString("pw");
					name=rs.getString("name");
					email=rs.getString("email");
					address=rs.getString("address");
					phone=rs.getString("phone");
					birth=rs.getTimestamp("birth");
					gender=rs.getString("gender");
					news=rs.getString("news");
					sms=rs.getString("sms");
		
		%>			
					<tr>
						<!-- 파라미터로 데이터 값을 넘겨줌  -->
						<td><a href="modify.jsp?id=<%=id %>"><%=id %></a></td>
						<td><%=pw %></td>
						<td><%=name %></td>
						<td><%=email %></td>
						<td><%=address %></td>
						<td><%=phone %></td>
						<td><%=birth %></td>
						<td><%=gender %></td>
						<td><%=news %></td>
						<td><%=sms %></td>
					</tr>
			
		<%
				}
		
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				try{
					if(rs!=null)rs.close();
					if(stmt!=null)stmt.close();
					if(conn!=null)conn.close();
				}catch(Exception e2){
					e2.printStackTrace();
				}
			}
		%>		
		</table>
	</body>
</html>