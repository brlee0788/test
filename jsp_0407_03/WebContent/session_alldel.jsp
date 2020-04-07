<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			if(request.isRequestedSessionIdValid()){  // 섹션에 유효한 값이 있는지 확인
				out.println("섹션이 있습니다.");
			}else{
				out.println("섹션이 없습니다.");
			}
		
		
		%>
	</body>
</html>