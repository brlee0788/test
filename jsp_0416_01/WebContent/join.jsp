<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String authUser =(String) session.getAttribute("authUser");
	if(authUser==null){
		out.println("<script>alert('로그인이 되어 있지 않습니다. 로그인을 해주세요.');");
		out.println("location.href='login.jsp';</script>");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Join_Ok" name="join" method="post">
		<h2>회원정보 입력</h2>
		아이디: <input type="text" name="id"><br>
		패스워드: <input type="password" name="pw"><br>
		패스워드 확인: <input type="password" name="pw2"><br>
		이름: <input type="text" name="name"><br>
		이메일: <input type="email" name="email"><br>
		주소: <input type="text" name="address"><br>
		전화번호: <input type="text" name="phone"><br>
		생년월일: <input type="date" name="birth"><br>
		<p>성별:</p> 
		<input type="radio" name="gender" value="남성" id="male"><label for="male">남성</label>
		<input type="radio" name="gender" value="여성" id="female"><label for="female">여성</label><br>
		<p>뉴스레터 수신 여부</p> 
		<input type="radio" name="news" value="예" id="news_y"><label for="news_y">예</label>
		<input type="radio" name="news" value="아니오" id="news_n"><label for="news_n">아니오</label><br>
		<p>SMS 수신 여부</p> 
		<input type="radio" name="sms" value="예" id="sms_y"><label for="sms_y">예</label>
		<input type="radio" name="sms" value="아니오" id="sms_n"><label for="sms_n">아니오</label><br>
		<input type="submit" value="회원가입"> <input type="reset" value="취소"><br>
	</form>

</body>
</html>