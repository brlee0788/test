<%@page import="com.javalec.ex.BoardDao"%>
<%@page import="com.javalec.ex.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String b_num = request.getParameter("b_num");
	BoardDao bdao = BoardDao.getInstance();
	int check = bdao.delete_board(b_num);
	
	if(check==1){
%>	
		<script type="text/javascript">
			alert("게시물이 삭제되었습니다.");
			window.location.href="list.jsp";
		</script>		
<% 				
	} else {
		%>	
		<script type="text/javascript">
			alert("게시물이 삭제되지 않았습니다. 다시 시도해두세요.");
			history.back();
		</script>		
<% 				
	}

%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>