<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div{width:1600px; height: 160px; margin: 0 auto; border: 1px solid black;}
	ul{list-style-type: none;
	   width: 1500px;
	  }
	li{float: left;
	   width: 250px;
	   height: 50px;
	   padding-top: 10px;
	   box-sizing: border-box;
	   font-size: 20px;	
	   text-align: center;
	   border: 1px solid black;}   
</style>
</head>
<body>
	<div>
		<%@ include file="menu.jsp" %>
	</div>
	<div>
		<p> main의 내용이 들어가는 부분</p>
	</div>
</body>
</html>