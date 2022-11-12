<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어디짐 - 운동할 땐,어디짐</title>
<%@include file="../include/style.jsp"%>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

</head>
<body>

	<%@include file="../include/header.jsp"%>

	<bodyer>

	<h2 class="pay_main_title">등록정보 확인</h2>
	<hr class="pay_hr">
	<div class="pay_main">
		<form class="regist_form" action="/reigst" method="post">
			<div class="pay_main_img">
				<img src="../resources/img/blue.png" class="pay_main_img2">
			</div>
			<div class="pay_main_info">
				<p class="pay_main_info_gym" name="f_id" value="${regist.f_id }">Mecca GYM</p>
				<div class="pay_main_info_month">
					<form>
						<p>
							<input type="date" id="" name="reg_date" class="">
						</p>

					</form>
					<!-- 			<p class="pay_main_info_month">0개월</p> -->
					<select name="reg_month" id="pay_month">
						<option value="1" <c:if test="${reg_month==1 }"></c:if>selected="selected">1개월</option>
						<option value="3" <c:if test="${reg_month==3 }"></c:if>>3개월</option>
						<option value="6" <c:if test="${reg_month==6 }"></c:if>>6개월</option>
						<option value="12" <c:if test="${reg_month==12 }"></c:if>>12개월</option>
					</select>

				</div>
			</div>
	</div>

	<h2 class="pay_main_title">등록자 정보</h2>
	<hr class="pay_hr">
	<div class="pay_order">

		<div class="pay_order_info">
			<p class="pay_order_name">회원명</p>
			<p class="pay_order_phone">휴대폰</p>
			<p class="pay_order_addr">주소</p>
		</div>
		<div class="pay_order_info2">
			<p class="pay_order_id" name="u_id" value="${regist.u_id }"></p>
			<p class="pay_order_name" name="u_name" value="${regist.u_name }">최형욱</p>
			<p class="pay_order_phone" name="u_phone" value="${regist.u_phone }">010-1111-1111</p>
			<p class="pay_order_addr" name="u_address" value="${regist.u_address }">부산 남구</p>
		</div>
	</div>

	<h2 class="pay_main_title">등록 금액</h2>
	<hr class="pay_hr">
	<div class="pay_pay">

		<div class="pay_pay_much">
			<p class="pay_pay_price">결제금액</p>
		</div>
		<div class="pay_pay_much2">
			<p class="pay_pay_price" value="${regist.p_price }">300,000원</p>
		</div>

		<div class="pay_pay_much3">
			<input type="submit" class="pay_pay_button" id="regist_btn"
				value="등록하기">
		</div>
		</form>
	</div>
	</bodyer>

	<script>
		/* 주문 요청 */
		$("#regist_btn").click(function() {

			$(".regist_form").attr("action", "/pay/pay");
			$(".regist_form").submit();

			alert("등록이 완료되었습니다!");
		});
		
	</script>

	<%@include file="../include/footer.jsp"%>
</body>
</html>