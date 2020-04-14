<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	Connection con=null;
	Statement stm=null;
	ResultSet rs=null;
	
	String id,pw,name,phone1,phone2,phone3,gender;
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>

	</head>
	<body>
		<%
			id = (String)session.getAttribute("user_id");
			String sql="select * from member2 where id='"+id+"'";
			
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "ora_user", "1234");
				stm = con.createStatement();
				rs = stm.executeQuery(sql);
				
				if(rs !=null){
					while(rs.next()){
						pw = rs.getString("pw");
						name = rs.getString("name");
						phone1 = rs.getString("phone1");
						phone2 = rs.getString("phone2");
						phone3 = rs.getString("phone3");
						gender = rs.getString("gender");
					}
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				try{
					if(rs!=null) rs.close();
					if(stm!=null) stm.close();
					if(con!=null) con.close();
				}catch(Exception e2){
					e2.printStackTrace();
				}
			}
		
		
		%>
	
		<form action="Modify_ok" name="join" method="get">
			<h2>회원가입</h2>
				아이디: <%=id %><br>
				패스워드: <input type="password" name="pw"><br>
				이름: <input type="text" name="name" value="<%=name%>"><br>
				<!-- DB에 입력된 값을 if문으로 비교해서 해당 옵션에 selected 속성 추가 -->
				
				<%
					switch(phone1){
						case "010":%>
							전화번호: <select name="phone1">
									<option value="010" selected="selected">010</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
									<option value="011">011</option>
									</select>	
				<%		break;
						case "016":%>
							전화번호: <select name="phone1">
									<option value="010">010</option>
									<option value="016" selected="selected">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
									<option value="011">011</option>
									</select>							
				<%		break;
						case "017":%>
							전화번호: <select name="phone1">
									<option value="010">010</option>
									<option value="016">016</option>
									<option value="017" selected="selected">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
									<option value="011">011</option>
									</select>										
				<%		break;
						case "018":%>
							전화번호: <select name="phone1">
									<option value="010">010</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018" selected="selected">018</option>
									<option value="019">019</option>
									<option value="011">011</option>
									</select>								
				<%		break;
						case "019":%>
							전화번호: <select name="phone1">
									<option value="010">010</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019" selected="selected">019</option>
									<option value="011">011</option>
									</select>							
				<%		break;
						case "011":%>
							전화번호: <select name="phone1">
									<option value="010">010</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
									<option value="011" selected="selected">011</option>
									</select>							
				<%		break;
					}
				%>
			
						<input type="text" name="phone2" value="<%=phone2 %>"> - 
						<input type="text" name="phone3" value="<%=phone3 %>"><br>
				<%
					if(gender.equals("남자")){
				%>
				성별: <input type="radio" name="gender" value="남자" id="man" checked="checked"><label for="man">남자</label>
					 <input type="radio" name="gender" value="여자" id="woman"><label for="woman">여자</label><br>
				
				<%
					}else{
				%>		
				성별: <input type="radio" name="gender" value="남자" id="man" checked="checked"><label for="man">남자</label>
				     <input type="radio" name="gender" value="여자" id="woman" checked="checked"><label for="woman">여자</label><br>
				<%
					}
				%>
				
				<input type="submit" value="수정완료"> <input type="reset" value="취소">	 
					 
		</form>
	</body>
</html>