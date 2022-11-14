<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header>
	<div class="links">
	<c:if test="${user == null }">
		<a href="/user/login" class="link_text">로그인</a>
		<a href="/user/register" class="link_text">회원가입</a>
	</c:if>

	<!-- 로그인한 상태 -->
	<c:if test="${user != null }">
		<a class="link_text">회원 : ${user.u_name}님</a>
		<a href="../user/modify" class="link_text">회원정보 수정</a>
		<a href="../facility/listFacility?u_id=${user.u_id }" class="link_text">시설 관리</a>
		<a href="/logout.do" class="link_text">로그아웃</a>
	</c:if>
	</div>
	<div class="mt-2 ml-5 pt-5 row">
		<a href="../"><img src="../resources/img/gym.png" class="img_logo mr-5 mt-5" /></a>
		<form class=mt-5>
		<fieldset>
			<legend class="visually-hidden">검색</legend>
			<div class="search_box">
				<input type="text" maxlength="225" tabindex="1"
					placeholder="검색해서 헬스장 찾아보세요!!" />
				<button type="button" tabindex="2">검색</button>
				

			</div>
		</fieldset>
	</form>
		<div class="sublink float-left mt-5">
			<a href="../facility/list"><img
				src="../resources/img/운동시설.png" class="sublink_img" /></a> <a
				href="#"><img src="../resources/img/트레이너.png"
				class="sublink_img" /></a> <a href="/"><img
				src="../resources/img/지도에서찾기.png" class="sublink_img" /></a>
		</div>
	</div>

</header>
<hr>
