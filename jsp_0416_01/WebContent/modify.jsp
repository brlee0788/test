<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% 
	String authUser =(String) session.getAttribute("authUser");
	if(authUser==null){
		out.println("<script>alert('로그인이 되어 있지 않습니다. 로그인을 해주세요.');");
		out.println("location.href='login.jsp';</script>");
	}
%>   
<%!
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	String id,pw,name,email,address,phone,gender,news,sms, sql;
	Timestamp birth;
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		try{
			// main.jsp 파라미터 값
			id = request.getParameter("id");
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "ora_user", "1234");
			sql="select * from lms_member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				pw = rs.getString("pw");
				name = rs.getString("name");
				email = rs.getString("email");
				address = rs.getString("address");
				phone = rs.getString("phone");
				birth = rs.getTimestamp("birth");
				gender = rs.getString("gender");
				news = rs.getString("news");
				sms = rs.getString("sms");
	%>
	
	<!-- HTML 프로그램 부분 추가 -->
	<h2>회원정보수정</h2>
	
	<form action="Modify_Ok" name="modify" method="post">
		아이디: <input type="text" name="id" value=<%=id %> readonly><br>
		패스워드: <input type="password" name="pw" value=<%=pw %>><br>
		이름: <input type="text" name="name"  value=<%=name %>><br>
		이메일: <input type="email" name="email" value=<%=email %>><br>
		주소: <input type="text" name="address" value=<%=address %>><br>
		전화번호: <input type="text" name="phone" value=<%=phone %>><br>
		생년월일: <input type="date" name="birth" value=<%=birth %>><br>
		<p>성별:</p> 
		<%
			switch(gender){
				case "남성":
		%>
					<input type="radio" name="gender" value="남성" id="male" checked><label for="male">남성</label>
					<input type="radio" name="gender" value="여성" id="female"><label for="female">여성</label><br>
		<%
				 break;
				case "여성":
		%>
					<input type="radio" name="gender" value="남성" id="male"><label for="male">남성</label>
					<input type="radio" name="gender" value="여성" id="female" checked><label for="female">여성</label><br>
		<%
				 break;
			}
		
		%>
		<p>뉴스레터 수신 여부</p> 
		<%
			switch(news){
				case "예":
		%>
					<input type="radio" name="news" value="예" id="news_y" checked><label for="news_y">예</label>
					<input type="radio" name="news" value="아니오" id="news_n"><label for="news_n">아니오</label><br>
		<%
				 break;
				case "아니오":
		%>
					<input type="radio" name="news" value="예" id="news_y"><label for="news_y">예</label>
					<input type="radio" name="news" value="아니오" id="news_n" checked><label for="news_n">아니오</label><br>
		<%
				 break;
			}
		
		%>
		<p>SMS 수신 여부</p> 
		<%
			switch(sms){
				case "예":
		%>
					<input type="radio" name="sms" value="예" id="sms_y" checked><label for="sms_y">예</label>
					<input type="radio" name="sms" value="아니오" id="sms_n"><label for="sms_n">아니오</label><br>
		<%
				 break;
				case "아니오":
		%>
					<input type="radio" name="sms" value="예" id="sms_y"><label for="sms_y">예</label>
					<input type="radio" name="sms" value="아니오" id="sms_n" checked><label for="sms_n">아니오</label><br>
		<%
				 break;
			}
		
		%>
		<input type="submit" value="회원정보수정"> <input type="reset" value="취소"><br>
	</form>
		<%	
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e2){
				e2.printStackTrace();	
			}
		}
	%>

</body>
</html>