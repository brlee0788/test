<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>공지사항 리스트</title>
		<link type="text/css" rel="stylesheet" href="css/notice_list_style.css">
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:500&display=swap" rel="stylesheet">
	</head>
	<body>
		<section>
			<div>
				<h1>공지사항</h1>
				<div>
					<div>
						<table>
							<colgroup>
								<col width="10%">
								<col width="*">
								<col width="20%">
								<col width="10%">
							</colgroup>
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>등록일</th>
									<th>조회수</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="dto" items="${list }">
								<tr>
									<td>${dto.bId }</td>
									<td class="tit"><a href="content_view.do?bId=${dto.bId}" class="list_a">${dto.bTitle }</a></td>
									<td>${dto.bDate }</td>
									<td>${dto.bHit }</td>
								</tr>
								</c:forEach>
							
							</tbody>
						</table>
						
					</div>
					<div>
						<span>
							<a href="write_view.do">입력</a>
						</span>
					</div>
						
					<div>
						<span>
							<strong>1</strong>
							<a href="#">2</a>
						</span>
						<a href="#"></a>
						<a href="#"></a>
					</div>
				</div>
			</div>
		</section>
		
	</body>
</html>