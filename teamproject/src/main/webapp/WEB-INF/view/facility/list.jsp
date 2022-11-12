<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어디짐 - 운동할 땐,어디짐</title>
<%@include file="../include/style.jsp"%>

<!-- 제이쿼리 ready(ajax) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<div class="empty">
		<h3>운동시설</h3>
	</div>
	<hr>
	<bodyer> 
	<div class="main">

		<c:forEach items="${list}" var="facility">
			<script>
				function cat1(input_id) {

					$.ajax({
						url : "/facility/getListCat",
						data : {f_id : input_id},
						method : "get",
						dataType : "json",
						success : function(data) {
							let str = JSON.stringify(data);
							
							for(let i in data){
								let cat_name = data[i].cat_name;
								$("#div_cat_id_" + input_id).append(data[i].cat_name + " ")
							}
							
						}
					});
				}
				cat1('${facility.f_id }')
			</script>
			<div class="card">
				<a href='/facility/get?f_id=<c:out value="${facility.f_id }"/>'>
					<img class="card-img-top" src="../resources/img/thumbImg.png"
					alt="Card image cap">
					<div class="card-body">
						<p class="card-text">
							<c:out value="${facility.f_name }" />
						</p>
						<!-- 헬스장명 -->
						<p class="card-text">
							<c:out value="${facility.f_address }" />
						</p>
						<!-- 주소 -->
						<div class="badge bg-primary color:" id="div_cat_id_${facility.f_id}"></div>
					</div>
				</a>
			</div>
		</c:forEach>
	</div>
	</bodyer>

	<%@include file="../include/footer.jsp"%>
</body>
</html>