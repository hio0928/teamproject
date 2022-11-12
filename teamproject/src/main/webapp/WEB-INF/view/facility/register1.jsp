<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어디짐 - 운동할 땐,어디짐</title>
<%@include file="../include/style.jsp"%>
</head>
<body>
	<%@include file="../include/header.jsp"%>

	<bodyer>
	<form role="form" action="/facility/register1" method="post">


		<div class="gym-sub-info">

			<div class="gym-sub-info2">
				<h1>시설 등록</h1>
				<p></p>

				<h3>시설 명</h3>
				<div class="">
					<input type="text" name="f_name" class="register-text2">
				</div>


				<h3>주소</h3>
				<div class="">
					<input type="text" name="f_address" class="register-text2">
				</div>


				<h3>전화번호</h3>
				<div class="">
					<input type="text" name="f_phone" class="register-text2">
				</div>


				<h3>시설정보</h3>
				<div class="">
					<textarea name="f_info" rows="30" cols="100" class=""></textarea>
				</div>

				<div class="gym-submit2">
					<input type="submit" class="gym-submit" value="등록">
				</div>
			</div>
		</div>



	</form>

	</bodyer>

	<%@include file="../include/footer.jsp"%>
</body>
</html>