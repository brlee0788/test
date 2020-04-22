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
	tr{height: 40px;}
	th{width: 80px;}
	td{width:350px; padding-left: 5px;}
</style>
</head>
<body>
	<!-- enctype="multipart/form-data" 꼭 적어줘야 업로드가 가능 -->
	<form action="upload_formok1.jsp" name="form" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<th>번호</th>
				<td><input type="text" name="b_num"></td>
				
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="b_title" style="width:300px"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><input type="text" name="b_content" style="width:300px"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="b_user"></td>
			</tr>
			<tr>
				<th>파일첨부1</th>
				<td><input type="file" name="file"></td>
			</tr>
			<tr>
				<th>파일첨부2</th>
				<td><input type="file" name="file2"></td>
			</tr>
		</table>
		
		<input type="submit" value="저장">
	</form>
</body>
</html>