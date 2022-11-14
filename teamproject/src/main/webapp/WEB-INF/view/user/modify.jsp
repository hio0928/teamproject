<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어디짐 - 운동할 땐,어디짐</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
* {
	box-sizing: border-box;
}

.login_logo {
	display: block;
	margin: auto;
}

.make-mem {
	text-align: center;
	margin-top: 30px;
}

.make-mem2 {
	width: 400px;
	height: 50px;
	font-weight: bold;
}

.make-mem3 {
	width: 400px;
	height: 50px;
	font-weight: bold;
	background: gray;
}

.update-id {
	text-align: center;
	margin-top: 30px;
}

.update-id2 {
	width: 400px;
	height: 50px;
	background: blue;
	color: white;
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

.login-top {
	text-align: center;
}

.login-top2 {
	font-weight: bold;
}

/* 비밀번호 확인 일치 유효성검사 */
.pwck_input_re_1 {
	color: green;
	display: none;
}

.pwck_input_re_2 {
	color: red;
	display: none;
}
</style>
</head>
<body>
	<div class="login-title">
		<a href="/"><img src="../resources/img/gym.png"
			class="login_logo" /></a>
	</div>
	<div class="login-top">
		<div class="login-top2">회원정보 수정</div>
	</div>
	<form name="" action="" class="modify_form" method="post">

		<div class="make-mem">
			<div class="">
				<input type="text" id="id" name="u_id" class="make-mem3"
					readonly="readonly" value="${user.u_id }">
			</div>
		</div>

		<div class="make-mem">
			<div class="">
				<input type="password" id="pw_input" name="u_passwd" class="make-mem2"
					placeholder="비밀번호" >
			</div>
		</div>

		<div class="make-mem">
			<div class="">
				<input type="text" id="name" name="u_name" class="make-mem3"
					readonly="readonly" value="${user.u_name }">
			</div>
		</div>

		<div class="make-mem">
			<div class="">
				<input type="text" id="phone" name="u_phone" class="make-mem2"
					placeholder="전화번호">
			</div>
		</div>

		<div class="make-mem">
			<div class="">
				<input type="text" id="address" name="u_address" class="make-mem2"
					placeholder="주소">
			</div>
		</div>

		<div class="update-id">
			<div class="">
				<input type="submit" class="update-id2" id="modify_submit" value="수정하기" onclick="#">
			</div>
		<form id="" action="" method="post">
			<div class="">
				<input type="button" class="update-id2" id="userdelete_button" value="회원탈퇴">
			</div>
		</form>	
		</div>
	</form>
	<hr class="hr">

	<div class="login-foot">
		<div class="login-foot2">©wheregym Corp. All rights reserved.</div>
	</div>
	<script>
	$("#modify_submit").click(function() {


		/* ,modify 메서드 서버 요청 */
		$(".modify_form").attr("action", "/user/modify");
		$(".modify_form").submit();
		
		alert("회원정보수정 완료!! 다시 로그인해주세요");

	});
		/* 삭제 버튼 클릭 메서드 */
		$("#userdelete_button").click(function() {


			/* ,modify 메서드 서버 요청 */
			$(".modify_form").attr("action", "/user/userDelete");
			$(".modify_form").submit();
			
			alert("탈퇴성공");

		});
	</script>
</body>
</html>