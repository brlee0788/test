<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Student2 stu = new Student2(); 객체 선언 -->
<jsp:useBean id="stu" class="com.javalec.ex.Student2" scope="page" />
<jsp:useBean id="stu2" class="com.javalec.ex.Student2" scope="page"/>
<jsp:useBean id="stu3" class="com.javalec.ex.Student2" scope="page"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<jsp:setProperty name="stu" property="s_number" value="1"/>
		<jsp:setProperty name="stu" property="s_name" value="홍길동"/>
		<jsp:setProperty name="stu" property="s_age" value="20"/>
		<jsp:setProperty name="stu" property="s_grade" value="1"/>
		
		<h2>학생 입력 정보</h2>
		학번: <jsp:getProperty name="stu" property="s_number"/><br>
		이름: <jsp:getProperty name="stu"	 property="s_name"/><br>
		나이: <jsp:getProperty name="stu" property="s_age"/><br>
		학년: <jsp:getProperty name="stu" property="s_grade"/><br>
		
		------------------------------------------------------<br>
		<!--2명의 정보 입력: 2 김유신 21 2 / 3 강감찬 22 3/  -->
		
		<jsp:setProperty name="stu2" property="s_number" value="2"/>
		<jsp:setProperty name="stu2" property="s_name" value="김유신"/>
		<jsp:setProperty name="stu2" property="s_age" value="21"/>
		<jsp:setProperty name="stu2" property="s_grade" value="2"/>
		
		학번: <jsp:getProperty name="stu2" property="s_number"/><br>
		이름: <jsp:getProperty name="stu2" property="s_name"/><br>
		나이: <jsp:getProperty name="stu2" property="s_age"/><br>
		학년: <jsp:getProperty name="stu2" property="s_grade"/><br>
		
		<jsp:setProperty name="stu3" property="s_number" value="3"/>
		<jsp:setProperty name="stu3" property="s_name" value="강감찬"/>
		<jsp:setProperty name="stu3" property="s_age" value="22"/>
		<jsp:setProperty name="stu3" property="s_grade" value="3"/>
		
		학번: <jsp:getProperty name="stu3" property="s_number"/><br>
		이름: <jsp:getProperty name="stu3" property="s_name"/><br>
		나이: <jsp:getProperty name="stu3" property="s_age"/><br>
		학년: <jsp:getProperty name="stu3" property="s_grade"/><br>
		
		
<%-- 
		<%
			Student2 s2 = new Student2();
			s2.setS_numner(2);
			s2.setS_name("김유신");
			s2.setS_age(21);
			s2.setS_grade(2);
			
			out.println("학번: "+s2.getS_number()+"<br>");
			out.println("이름: "+s2.getS_name()+"<br>");
			out.println("나이: "+s2.getS_age()+"<br>");
			out.println("학년: "+s2.getS_grade()+"<br>");
		%>
--%>		
	</body>
</html>