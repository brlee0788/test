<%@page import="com.javalec.ex.BoardDto"%>
<%@page import="com.javalec.ex.BoardDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			table{border-collapse: collapse; margin-bottom: 5px;}
			tr,th,td{border:1px solid black;}
			tr:first-child{background: #efefef;}
			td{text-align: center;}
			td:first-child{width: 50px;}
			td:nth-child(2) {width: 150px;}
			td:nth-child(3) {width: 300px;}
			td:nth-child(4) {width: 100px;}
			td:nth-child(5) {width: 150px;}
			td:nth-child(6) {width: 100px;}
		</style>
	</head>
	<body>
		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>내용</th>
				<th>작성자</th>
				<th>파일이름</th>
				<th>다운로드</th>
			</tr>
<%
	BoardDao bdao = BoardDao.getInstance();
	ArrayList list = new ArrayList();
	list = bdao.getBoards();
	
	for(int i=0; i<list.size(); i++){
		BoardDto bdto1 = (BoardDto)list.get(i);
%>
			<tr>
				<td><%=bdto1.getB_num() %></a></td>
				<td><a href="b_modify.jsp?b_num=<%=bdto1.getB_num() %>"><%=bdto1.getB_title() %></td>
				<td><%=bdto1.getB_content() %></td>
				<td><%=bdto1.getB_user() %></td>
				<td><%=bdto1.getFile() %></td>
				<td><a href="upload/<%=bdto1.getFile() %>">다운로드</a></td>
			</tr>
		
<% } %>		

		</table>
		<a href="upload_form2.jsp"><button>글쓰기</button></a>
	</body>
</html>