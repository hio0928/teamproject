<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header>
		<div class="links">
			<a href="../user/list.jsp" class="link_text">로그인</a> <a href="../user/register.jsp" class="link_text">회원가입</a>
			<a href="/" class="link_text">공지/이벤트</a> <a href="/"
				class="link_text">자유게시판</a>
		</div>
		<a href="../main/list.jsp"><img src="../resources/img/gym.png" class="img_logo" /></a>
		<form>
			<fieldset>
				<legend class="visually-hidden">검색</legend>
				<div class="search_box">
					<input type="text" maxlength="225" tabindex="1"
						placeholder="검색해서 헬스장 찾아보세요!!" />
					<button type="submit" tabindex="2">검색</button>

				</div>
			</fieldset>
		</form>
		<div class="sublink">
			<a href="../facility/list.jsp"><img src="../resources/img/운동시설.png" class="sublink_img" /></a> <a
				href="../teacher/list.jsp"><img src="../resources/img/트레이너.png" class="sublink_img" /></a> <a
				href="/"><img src="../resources/img/지도에서찾기.png" class="sublink_img" /></a>
		</div>

	</header>
	<hr>
    