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
	<form name="" action="" class="" method="post">

		<div class="gym-sub-info">

			<div class="gym-sub-info2">
			
				<h3>편의 시설 카테고리</h3>
				<label>- ctrl 누르면 중복선택 가능 -</label><br> 
				<select name="" id="" multiple="multiple" class="catrgory">
					<option>----- 선택하세요 -----</option>
					<option value="운동복">운동복</option>
					<option value="수건">수건</option>
					<option value="샤워실">샤워실</option>
					<option value="Wi-fi">Wi-fi</option>
					<option value="락커">락커</option>
					<option value="체성분검사">체성분검사</option>
					<option value="체형분석">체형분석</option>
					<option value="주차장">주차장</option>
					
					
				</select>
			
			</div>
		</div>

		<div class="">
			<div class="gym-submit2">
				<input type="submit" class="gym-submit" value="운동시설 등록"> <input
					type="button" class="gym-submit" value="처음 페이지"
					onclick="location.href='list.jsp'">
			</div>
		</div>
	</form>

	</bodyer>

	<%@include file="../include/footer.jsp"%>
</body>
</html>