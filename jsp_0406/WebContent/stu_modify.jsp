<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="stu_insert.jsp" name="inform" method="get">
		학번: <input type="text" name="s_num" value="<%=request.getParameter("s_num") %>"><br>
		이름: <input type="text" name="s_name" value="<%=request.getParameter("s_name") %>"><br>
		국어: <input type="text" name="s_kor" value="<%=request.getParameter("s_kor") %>"><br>
		영어: <input type="text" name="s_eng" value="<%=request.getParameter("s_eng") %>"><br>
		수학: <input type="text" name="s_math" value="<%=request.getParameter("s_math") %>"><br>
		<input type="submit" value="저장">
		<input type="reset" value="취소">
	</form>

</body>
</html>