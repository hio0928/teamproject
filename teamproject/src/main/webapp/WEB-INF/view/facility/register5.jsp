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
				<h3>사진</h3><p>1번째 업로드사진은 메인입니다.</p>
					<div class="">
						<input type="file" name="" class="gym-create-img3">
					</div>

			</div>
		</div>

		<div class="">
			<div class="gym-submit2">
				<input type="submit" class="gym-submit" value="운동시설 등록"> <input
					type="button" class="gym-submit" value="다음 페이지"
					onclick="location.href='register4.jsp'">
			</div>
		</div>


	</form>

	</bodyer>

	<%@include file="../include/footer.jsp"%>
</body>
</html>