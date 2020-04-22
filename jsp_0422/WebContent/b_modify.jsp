<%@page import="com.javalec.ex.BoardDto"%>
<%@page import="com.javalec.ex.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String b_num = request.getParameter("b_num");
	BoardDao bdao = BoardDao.getInstance();
	BoardDto bdto = bdao.getBoard(b_num);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/custom.js"></script>
</head>
<body>
	<form action="b_modifyok.jsp" name="modify" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<th>번호</th>
				<td><input type="text" name="b_num" value=<%=bdto.getB_num() %> readonly></td>
				
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="b_title" style="width:600px;" value=<%=bdto.getB_title() %>></td>
			</tr>
			<tr>
				<th>내용</th>
				<td style="width:700px; padding: 10px 0px 10px 5px;">
				<textarea rows="50" cols="10"  name="b_content" style="width:600px; height:300px;"><%=bdto.getB_content() %></textarea>
				</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="b_user" value=<%=bdto.getB_user() %>></td>
			</tr>
			<tr>
				<th>파일첨부</th>
				<td><input type="text" name="b_file" value=<%=bdto.getFile() %> readonly></td>
			</tr>
			<tr>
				<th>파일첨부 수정</th>
				<td><input type="file" name="file_rev"></td>
			</tr>
		</table>
		
		<input type="submit" value="수정완료"> 
		<input type="button" onclick="javascript:history.back()" value="취소"> 
		<input type="button" onclick="delete_chk()" value="삭제">
	</form>


</body>
</html>