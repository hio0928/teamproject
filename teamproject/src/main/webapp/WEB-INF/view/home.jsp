<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어디짐 - 운동할 땐,어디짐</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<style type="text/css">
* {
	box-sizing: border-box;
}

a {
	text-decoration: none; /* 기본 밑줄을 제거합니다 */
	color: #888;
}

header {
	margin: auto; /* header의 양쪽 여백(margin)을 동등하게 맞춤 -> 수평가운데정렬 */
	width: 1080px;
	height: 215px;
	display: flex;
	align-items: center; /* 하위 요소들 수직 가운데정렬 */
	position: relative;
}

.links { /* 링크들을 상단 우측에 위치시킵니다. */
	position: absolute;
	top: 0;
	right: 0;
}

fieldset {
	border: none; /* 기본 border 없애기(이 코드를 지우고 기본 border를 확인해보세요) */
}

.visually-hidden { /* legend 안보이게 설정. 이렇게하면 접근성을 준수하면서 디자인을 해치지 않습니다. */
	position: absolute !important;
	height: 1px;
	width: 1px;
	overflow: hidden;
	clip: rect(1px, 1px, 1px, 1px);
	clip: rect(1px, 1px, 1px, 1px);
	white-space: nowrap;
}

.links { /* 링크들을 상단 우측에 위치시킵니다. */
	position: absolute;
	top: 0;
	right: 0;
}

.link_text {
	font-size: 10px;
	margin-left: 5px;
}

.img_logo {
	margin-bottom: 12px;
	width: 220px;
	height: 65px;
}

.search_box {
	width: 520px;
	height: 50px;
	border: 2px solid #000000;
	display: flex;
	align-items: center;
}

.search_box input {
	flex: 9; /* search-box내부에서 9만큼의 크기를 차지(비율) */
	height: 46px;
	padding-left: 12px;
	padding-right: 12px;
	border: none;
	outline: none;
	font-size: 18px;
}

.search_box button {
	flex: 1; /* search-box내부에서 1만큼의 크기를 차지(비율) */
	height: 46px;
	margin: 0;
	padding: 0;
	border: none;
	outline: none;
	background: #ffffff;
	color: #000000;
}

.sublink {
	position: absolute;
	right: 0;
}

.swiper {
	width: 100%;
	height: 500px;
}

.swiper-slide {
	width: 100%;
	height: 500px;
}

.swiper_img {
	width: 100%;
	height: 500px;
}

/* ------------------------------------ */
ul {
	margin: 0;
	padding: 0;
}

footer {
	width: 1080px;
	height: 220px;
	margin: auto;
	padding: 0 8px 0 8px;
	display: flex;
	flex-direction: row;
	font-size: 12px;
}

.foot1 {
	flex-direction: column;
}

.foot2 {
	flex-direction: column;
	margin-left: 200px;
}

.foot3 {
	flex-direction: column;
	margin-left: 200px;
}

.footer-content {
	margin-top: 50px;
}

.footer-content2 {
	margin-top: 50px;
}

.footer-content3 {
	margin-top: 50px;
}

.footer-num {
	font-size: 30px;
	color: blue;
	margin-top: 20px;
	margin-bottom: 20px;
}
.login_success_area>a{
    font-size: 15px;
    font-weight: 900;
    display: inline-block;
    margin-top: 5px;
    background: #e1e5e8;
    width: 82px;
    height: 22px;
    line-height: 22px;
    border-radius: 25px;
    color: #606267;    
}
</style>
</head>
<body>

	<header>
		<div class="links">
			<!-- 로그인 하지 않은 상태 -->
			<c:if test="${user == null }">
				<a href="/user/login" class="link_text">로그인</a>
				<a href="/user/register" class="link_text">회원가입</a>
			</c:if>

			<!-- 로그인한 상태 -->
			<c:if test="${ user != null }">
				<a class="link_text">회원 : ${user.u_name}님</a>
				<a href="user/modify" class="link_text">회원정보 수정</a>
				<a href="/logout.do" class="link_text">로그아웃</a>
			</c:if>

			<a href="/" class="link_text">공지/이벤트</a> <a href="/"
				class="link_text">자유게시판</a>
		</div>
		<img src="/resources/img/gym.png" class="img_logo" />
		<div class="sublink">
			<a href="/facility/list">
			<img src="/resources/img/운동시설.png" class="sublink_img" />
			</a> <a href="../teacher/teacher.jsp">
			<img src="/resources/img/트레이너.png" class="sublink_img" /></a> 
			<a href="/"><img src="/resources/img/지도에서찾기.png" class="sublink_img" /></a>
		</div>

	</header>
	<hr>
	<slide> <!-- Slider main container -->
	<div class="swiper">
		<!-- Additional required wrapper -->
		<div class="swiper-wrapper">
			<!-- Slides -->
			<div class="swiper-slide">
				<img src="/resources/img/orange.png" class="swiper_img" />
			</div>
			<div class="swiper-slide">
				<img src="/resources/img/blue.png" class="swiper_img" />
			</div>
			<div class="swiper-slide">
				<img src="/resources/img/black.jpg" class="swiper_img" />
			</div>

		</div>
		<!-- If we need pagination -->
		<div class="swiper-pagination"></div>

		<!-- If we need navigation buttons -->
		<div class="swiper-button-prev"></div>
		<div class="swiper-button-next"></div>

		<!-- If we need scrollbar -->
		<div class="swiper-scrollbar"></div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
	<script>
		const swiper = new Swiper('.swiper', {
			// Optional parameters
			direction : 'vertical',
			loop : true,

			// If we need pagination
			pagination : {
				el : '.swiper-pagination',
			},

			// Navigation arrows
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},

			// And if we need scrollbar
			scrollbar : {
				el : '.swiper-scrollbar',
			},
		});
	</script> </slide>
	<hr>
	<footer>
		<div class="foot1">
			<div class="footer-content">제휴 및 서비스 이용문의</div>
			<n />
			<div class="footer-num">1588-1588</div>
			<n />
			<div class="">AM 10:00 - PM 07:00</div>
			<n />
			<div class="">토 일 공휴일 휴무</div>
		</div>
		<div class="foot2">
			<div class="footer-content2">(주)부산IT</div>
			<n />
			<div>부산광역시 파이낸스센터 5층</div>
			<n />
			<div>TEAM:한동수 최형욱 한지호</div>
			<n />
			<div>어디짐 프로젝트</div>
			<n />

		</div>
		<div class="foot3">
			<div class="footer-content2">
				<a href="../facility/createGym.jsp">운동시설등록</a> <a
					href="../teacher/createTeacher.jsp">트레이너등록</a>
			</div>
		</div>
	</footer>

	<hr>
</body>
</html>