<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어디짐 - 운동할 땐,어디짐</title>
<style>
* {
	box-sizing: border-box;
}

.login_logo {
	display: block;
	margin: auto;
}

.login-id {
	text-align: center;
	margin-top: 30px;
}

.login-id2 {
	width: 400px;
	height: 50px;
	font-weight: bold;
}

.login-submit {
	width: 200px;
	height: 50px;
	background: blue;
	color: white;
	font-weight: bold;
	font-size: 20px;
	border: solid 1px white;
	border-radius: 12px;
}

.login-submit2 {
	text-align: center;
	margin-top: 30px;
}

.login-submit3 {
	width: 200px;
	height: 50px;
	background: grey;
	color: black;
	font-weight: bold;
	font-size: 20px;
	border: solid 1px white;
	border-radius: 12px;
}

.hr {
	width: 400px;
	margin-top: 30px;
	text-align: center;
}

.login-foot {
	text-align: center;
}

.login-foot2 {
	font-size: 12px;
}
/* 로그인 실패시 경고글 */
.login_warn {
	margin-top: 30px;
	text-align: center;
	color: red;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="login-title">
		<a href="/home.jsp"><img src="../resources/img/gym.png"
			class="login_logo" /></a>
	</div>

	<form id="login_form" action="" method="post">
		<div class="login-id">
			<input type="text" class="login-id2" placeholder="아이디" name='u_id'
				required autofocus>
		</div>

		<div class="login-id">
			<input type="password" class="login-id2" placeholder="비밀번호"
				name='u_passwd' required>
		</div>
		<c:if test="${result == 0 }">
			<div class="login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
		</c:if>
		<div class="login-submit2">
			<button class="login-submit" id="login_button" type="submit">로그인</button>
			<button class="login-submit3" type="button"
				onclick="location.href='register'">회원가입</button>
		</div>
	</form>

	<hr class="hr">

	<div class="login-foot">
		<div class="login-foot2">©wheregym Corp. All rights reserved.</div>
	</div>
	<script>
		/* 로그인 버튼 클릭 메서드 */
		$("#login_button").click(function() {

			//alert("로그인 버튼 작동");

			/* 로그인 메서드 서버 요청 */
			$("#login_form").attr("action", "/user/login");
			$("#login_form").submit();

		});
	</script>

</body>
</html>