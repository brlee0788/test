<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String authUser = (String)session.getAttribute("authUser");
	
	if(authUser==null){
		out.println("<script>alert('로그인이 되어 있지 않습니다. 먼저 로그인을 해주세요.');");
		out.println("location.href='admin_login.html';</script>");
	}
%>
<%!
	Connection conn=null;
	Statement stmt=null;
	ResultSet rs=null;
	
	String id,name,email,address,phone,birth,gender,news,sms;

%>
<!DOCTYPE html>
<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="css/admin_header.css">
		<link rel="stylesheet" type="text/css" href="css/admin_main.css">
		<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/prefixfree.dynamic-dom.min.js"></script>
        <script type="text/javascript" src="js/admin_header.js"></script> 
	</head>
	<body>
	<header>
		<div>
			<div id="top">
			<a href="admin_main.html"><p>LMS <span>STARTUP</span> Type</p></a>
			<ul>
				<li>관리자</li>
				<li><img src="images/logout.png"></li>
				<li>
					<select>
						<option>한국어</option>
						<option>영어</option>
						<option>중국어(간체)</option>
						<option>일본어</option>
					</select>
				</li>
				<li>
					<select >
						<option>LMS매뉴얼</option>
						<option>나의 홈페이지</option>
						<option>아이티맵</option>
					</select>
				</li>
			</ul>
			</div>
			<div id="menu"  class="admin_gnb">
			<ul>
	            <li><a href="#"><span></span>커뮤니티</a></li>
	            <li><a href="#"><span></span>환경설정</a></li>
	            <li><a href="#"><span></span>회원/강사</a></li>
	            <li><a href="#"><span></span>상품/결제(신청)</a></li>
	            <li><a href="#"><span></span>수업/스케쥴</a>
	            	<ul class="sub_list">
	            	<li><a href="#">임시 리스트1</a></li>
	            	<li><a href="#">임시 리스트2</a></li>
	            	<li><a href="#">임시 리스트3</a></li>
	           		 </ul>
	            </li>
	            <li><a href="#"><span></span>프로모션</a>
	            	<ul class="sub_list">
		            	<li><a href="#">임시 리스트1</a></li>
		            	<li><a href="#">임시 리스트2</a></li>
		            	<li><a href="#">임시 리스트3</a></li>
	           		 </ul>
	            </li>
	            <li><a href="#"><span></span>홈페이지</a>
	            	<ul class="sub_list">
	            	<li><a href="ad_notice_list.html">공지사항 관리</a></li>
	            	<li><a href="ad_event_list.html">이벤트  관리</a></li>
	            	<li><a href="#">회원 관리</a></li>
	           		 </ul>
	           	</li>
	            <li><a href="#"><span></span>회계관리</a>
	            	<ul class="sub_list">
		            	<li><a href="#">임시 리스트1</a></li>
		            	<li><a href="#">임시 리스트2</a></li>
		            	<li><a href="#">임시 리스트3</a></li>
	           		 </ul>
	            </li>
	            <li><a href="#"><span></span>통계 분석</a>
	            	<ul class="sub_list">
		            	<li><a href="#">임시 리스트1</a></li>
		            	<li><a href="#">임시 리스트2</a></li>
		            	<li><a href="#">임시 리스트3</a></li>
	           		 </ul>
	            </li>
			</ul>
			</div>
		</div>
	</header>
	<nav>
		<h2><em></em>회원/강사</h2>
		<div  id="student" class="user">
			<a>학생 관리<span id="s_icon" class="icon_minus"></span></a>
			<div id="stu_list">
				<ul>
					<li><a href="#"><img src="images/icon_title_left.png">학생 등록</a></li>
					<li><a href="#"><img src="images/icon_title_left.png">학생 리스트(탈퇴)</a></li>
					<li><a href="#"><img src="images/icon_title_left.png">학생등급 관리</a></li>
					<li><a href="#"><img src="images/icon_title_left.png">학생등급 분류/해택</a></li>
					<li><a href="#"><img src="images/icon_title_left.png">회원 상담 관리</a></li>
				</ul>
			</div>
		</div>
		<div  id="teacher" class="user">
			<a>강사 관리<span id="t_icon" class="icon_minus2"></span></a>
			<div id="tes_list">
				<ul>
					<li><a href="#"><img src="images/icon_title_left.png">강사 등록</a></li>
					<li><a href="#"><img src="images/icon_title_left.png">강사 리스트</a></li>
					<li><a href="#"><img src="images/icon_title_left.png">강사 리스트(사용중지)</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<section>
		<h1>관리자 메인</h1>
		<div id="main_list">
			<div id="main_user_list">
				<h2>신규가입회원 5건 목록</h2>
				<div class="list_count">총회원수 2,221명 중 차단 0명, 탈퇴 : 34명</div>
				<div>
					<table border="1">
						<tr>
							<th>회원 아이디</th>
							<th>이름</th>
							<th>이메일</th>
							<th>주소</th>
							<th>휴대전화</th>
							<th>생년월일</th>
							<th>성별</th>
							<th>뉴스레터 수신여부</th>
							<th>SMS 수신여부</th>
						</tr>
<%
	try{
		String sql = "select * from lms_member";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "ora_user", "1234");
		stmt = conn.createStatement();
		rs=stmt.executeQuery(sql);
		
		while(rs.next()){
			id = rs.getString("id");
			name = rs.getString("name");
			email = rs.getString("email");
			address = rs.getString("address");
			phone = rs.getString("phone");
			birth = rs.getString("birth");
			gender = rs.getString("gender");
			news = rs.getString("news");
			sms = rs.getString("sms");
%>
						<tr>
							<td class="table_left"><a href="admin_modify.jsp?id=<%=id %>"><%=id %></a></td>
							<td class="table_left"><%=name %></td>
							<td class="table_left"><%=email %></td>
							<td><%=address %></td>
							<td><%=phone %></td>
							<td><%=birth %></td>
							<td><%=gender %></td>
							<td><%=news %></td>
							<td><%=sms %></td>
						</tr>		
<% 			
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(stmt!=null)stmt.close();
			if(conn!=null)conn.close();
		}catch(Exception e2){
			e2.printStackTrace();	
		}
	}
%>					</table>	
					<div class="detail_btn">
						<a href="admin_join.jsp">회원 정보추가</a>
					</div>
				</div>
			</div>
			<div id="main_notice_list">
				<h2>최근게시물</h2>
				<div>
					<table border="1">
						<tr>
							<th>그룹</th>
							<th>게시판</th>
							<th>제목</th>
							<th>이름</th>
							<th>일시</th>
						</tr>
						<tr>
							<td>쇼핑몰</td>
							<td>자유게시판</td>
							<td>안녕하세요</td>
							<td>김홍익</td>
							<td>2020.03.19</td>
						</tr>
						<tr>
							<td>쇼핑몰</td>
							<td>자유게시판</td>
							<td>안녕하세요</td>
							<td>김홍익</td>
							<td>2020.03.19</td>
						</tr>
						<tr>
							<td>쇼핑몰</td>
							<td>자유게시판</td>
							<td>안녕하세요</td>
							<td>김홍익</td>
							<td>2020.03.19</td>
						</tr>
						<tr>
							<td>쇼핑몰</td>
							<td>자유게시판</td>
							<td>안녕하세요</td>
							<td>김홍익</td>
							<td>2020.03.19</td>
						</tr>
						<tr>
							<td>쇼핑몰</td>
							<td>자유게시판</td>
							<td>안녕하세요</td>
							<td>김홍익</td>
							<td>2020.03.19</td>
						</tr>
					</table>
					<div class="detail_btn">
						<a href="#">최근게시물 전체보기</a>
					</div>
				</div>
			</div>
			<div id="main_event_list">
				<h2>신규가입회원 5건 목록</h2>
				<div class="list_count">전체 8,772 건 중 5건 목록</div>
				<div>
					<table border="1">
						<tr>
							<th>회원 아이디</th>
							<th>이름</th>
							<th>일시</th>
							<th>포인트내용</th>
							<th>적립포인트</th>
							<th>누적포인트</th>
						</tr>
						<tr>
							<td class="table_left">hh123</td>
							<td class="table_left">김홍익</td>
							<td>2020.03.18</td>
							<td>자유게시판 2324 글쓰기</td>
							<td>100</td>
							<td>800</td>
						</tr>
						<tr>
							<td class="table_left">hh123</td>
							<td class="table_left">김홍익</td>
							<td>2020.03.18</td>
							<td>자유게시판 2324 글쓰기</td>
							<td>100</td>
							<td>800</td>
						</tr>
						<tr>
							<td class="table_left">hh123</td>
							<td class="table_left">김홍익</td>
							<td>2020.03.18</td>
							<td>자유게시판 2324 글쓰기</td>
							<td>100</td>
							<td>800</td>
						</tr>
						<tr>
							<td class="table_left">hh123</td>
							<td class="table_left">김홍익</td>
							<td>2020.03.18</td>
							<td>자유게시판 2324 글쓰기</td>
							<td>100</td>
							<td>800</td>
						</tr>
						<tr>
							<td class="table_left">hh123</td>
							<td class="table_left">김홍익</td>
							<td>2020.03.18</td>
							<td>자유게시판 2324 글쓰기</td>
							<td>100</td>
							<td>800</td>
						</tr>
					</table>
					<div class="detail_btn">
						<a href="#">포인트내역 전체보기</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	</body>
</html>