<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link type="text/css" rel="stylesheet" href="css/style.css">
		<style type="text/css">
			*{padding:0; margin:0;}
			#top{height:20px;}
			#top>p{color:#888888; font-size:12px; text-align: center; position: relative;}
			a{text-decoration: none;}
			#login_b{width: 280px; height: 37px; background: #00ab33; text-align: center;
						    line-height: 35px; margin: 0 auto; margin-top:12px; }
			#login_b>a>span{color:white; font-size: 20px; font-weight: bold; }
			#bottom{width: 280px; margin: 0 auto; margin-top:12px;}
			#bottom>a{color:#666666; font-size: 12px;}
			#bottom>a:visited{color: #666666;}
			#bottom>a:hover{text-decoration: underline;}
			#bottom>a:last-child {float: right;}
			
		</style>
	</head>
	<body>
		<%! String naver_User; %>
			
		<%
			// user가 naver_index2.jsp로 바로 접근해도 페이지가 열리지 않도록 함 
			Cookie[] cookie_all = request.getCookies();
			
			for(int i=0;i<cookie_all.length;i++){
				if(cookie_all[i].getName().equals("naverUser")){
					naver_User = cookie_all[i].getValue();
		%>
					<div class="log_box2">
						<div class="log_s_box">
						<span></span>
							<div class="log_xs_box">
							<p><span><a href="#"><%=naver_User %>님</a></span><span><a href="#">내정보</a></span></p>
							<p><span><a href="#">메일</a></span><span><a href="#">쪽지</a></span><span class="btn"><a href="logout.jsp">로그아웃</a></span></p>
					
							</div>
						</div>
						<ul>
							<li><a href="#">알림</a></li>
							<li><a href="#">MY구독</a></li>
							<li><a href="#">메일</a></li>
							<li><a href="#">카페</a></li>
							<li><a href="#">블로그</a></li>
							<li><a href="#">페이</a></li>
						</ul>
					</div>
		<% 
				}
			}
			
			int count=0;
			for(int i=0;i<cookie_all.length;i++){
				if(cookie_all[i].getName().equals("naverUser")){
				   count++;
				}
			}
			
			if(count==0){
				naver_User=null;
			}
						
			if(naver_User==null){
		%>
				<div id="top">
					<p>네이버를 더 안전하고 편리하게 이용하세요.</p>
				</div>
				<div id="login_b">
					<a href="naver_login.html"><span>NAVER 로그인</span></a>
				</div>
				<div id="bottom">
					<a href="#">아이디</a>
					<a href="#">비밀번호</a>
					<a href="#">회원가입</a>
				</div>
		<% 
			}
		%>		
		
	</body>
</html>