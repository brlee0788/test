<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>공지사항 view</title>
		<link type="text/css" rel="stylesheet" href="css/notice_view_style.css">
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:500&display=swap" rel="stylesheet">
	</head>
	<body>
		<header>
			<div id="nav_up">
				<ul>
					<li>회원가입</li>
					<li>로그인</li>
					<li>고객행복센터</li>
					<li>배송지역검색</li>
					<li>기프트카드 등록</li>
				</ul>
			</div>
			
			<nav>
				<h1></h1>
				<ul>
					<li>COOKIT소개</li>
					<li>COOKIT메뉴</li>
					<li>리뷰</li>
					<li>이벤트</li>
					<li>MY쿡킷</li>
				</ul>
				<ul>
					<li><a href="#"><span>장바구니</span></a></li>
					<li><a href="#"><span>메뉴찾기</span></a></li>
				</ul>
			</nav>
		</header>
		
		<section>
			<div>
				<h1>공지사항</h1>
				<div>
					<div>
						<div>
						
							<h2>
							${content_view.bTitle }
								<span>${content_view.bDate }<span style="margin-left:750px;">조회수  ${content_view.bHit }</span></span>
								
							</h2>
						</div>
										
						<div>
							<div>
								<p>${content_view.bContent }</p>
							</div>
						</div>
						
						<div></div>
					</div>
					<div>
						<a href="input_notice.html">수정</a>
						<a href="list.do">목록</a>
					</div>
				</div>
			</div>
		</section>
		
	<footer>
			<div id="footer">
				<div>
				  <h1><a href="#"></a></h1>
				  <p>© COOKIT ALL RIGHTS RESERVED</p>
				</div>
					
				<div>
					<ul>
					<li><a href="#">이용약관</a></li>
					<li class="lime"><a href="#">개인정보처리 방침</a></li>
					<li><a href="#">법적고지</a></li>
					<li><a href="#">사업자정보 확인</a></li>
					</ul>
					<p>씨제이제일제당(주)</p>
					<p>대표이사 : 손경식,강신호,신현재</p>
					<p class="right_n">사업자등록번호 : 104-86-09535</p>
					<p>주소 : 서울 중구 동호로 330 CJ제일제당 센터 (우) 04560</p>
					<p>통신판매업신고 중구 제 07767호  </p>
					<p class="right_n">개인정보보호책임자 : 조영민</p>
					<p>이메일 : cjon@cj.net</p>
					<p class="right_n">호스팅제공자 : CJ올리브네트웍스㈜</p>
					<p class="right_n">고객님은 안전거래를 위해 현금등으로 결제시 LG U+ 전자 결제의 매매보호(에스크로) 서비스를 이용하실 수 있습니다.<a href="#">가입 사실 확인</a></p>
				</div>
						
				<div>
					<button type="button"><span>CJ그룹계열사 바로가기 ▽</span></button>
					<p>고객행복센터</p><p>1668-1920</p>
					<div><a href="#">1:1문의</a></div>
				</div>
			</div>
		</footer>
	</body>
</html>