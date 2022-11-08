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
<%@include file="../include/modal.jsp"%>
	<form name="" action="" class="" method="get">


		<div class="gym-sub-info">

			<div class="gym-sub-info2">
				<h3>운동 카테고리</h3>
				<label>- ctrl 누르면 중복선택 가능 -</label><br> 
				<select name="" id="" multiple="multiple" class="catrgory">
					<option>----- 선택하세요 -----</option>
					<option value="PT">PT</option>
					<option value="GX">GX</option>
					<option value="요가">요가</option>
					<option value="헬스">헬스</option>
					<option value="크로스핏">크로스핏</option>
					<option value="필라테스">필라테스</option>
					
				</select>
			</div>
		</div>

		<div class="">
			<div class="gym-submit2">
				<input type="submit" class="gym-submit" value="운동시설 등록"> <input
					type="button" class="gym-submit" value="다음 페이지"
					onclick="location.href='register5.jsp'">
			</div>
		</div>


	</form>

	</bodyer>

	<%@include file="../include/footer.jsp"%>
</body>
</html>