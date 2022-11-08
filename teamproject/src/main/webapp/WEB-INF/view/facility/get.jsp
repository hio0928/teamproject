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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<script>
	
		function cat(input_id) {

			$.ajax({
				url : "/facility/getListCat",
				data : {
					f_id : input_id
				},
				method : "get",
				dataType : "json",
				success : function(data) {
					let str = JSON.stringify(data);

					for ( let i in data) {
						$("#div_cat_id_" + input_id).append(data[i].cat_name + " ")
					}

				}
			});
		}
		
		function com(input_id) {

			$.ajax({
				url : "/facility/getListCom",
				data : {
					f_id : input_id
				},
				method : "get",
				dataType : "json",
				success : function(data) {
					let str = JSON.stringify(data);

					for ( let i in data) {
						$("#div_com_id_" + input_id).append(data[i].com_name + " ")
					}

				}
			});
		}
		function price(input_id) {

			$.ajax({
				url : "/facility/getListPrice",
				data : {
					f_id : input_id
				},
				method : "get",
				dataType : "json",
				success : function(data) {
					let str = JSON.stringify(data);

					for (let i in data) {
						let com_name = data[i].cat_name;
						$("#p_month_"+ i + "_" + input_id).append(data[i].p_month + "개월")
						$("#p_price_"+ i + "_" + input_id).append(data[i].p_price + "원")
					}

				}
			});
		}
		
		
		cat('${facility.f_id }')
		com('${facility.f_id }')
		price('${facility.f_id }')
		
	</script>

	<bodyer>
	<div class="gym-main">
		<img class="gym-main-img" src="../img/blue.png" alt="Card image cap">
		<div class="gym-main-explain">
			<p class="gym-main-name">${facility.f_name}</p>
			&nbsp; &nbsp;
			<p>${facility.f_address}</p>
			<p>${facility.f_phone}</p>
			<div id="div_cat_id_${facility.f_id}"></div>
			&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
			<form name="" action="" method="post">
				<a href="../pay/get.jsp"><div class="gym-main-pay">회원권 결제</div></a>
			</form>
		</div>

	</div>

	
	<div class="gym-sub-info">
		<div class="gym-sub-info2">
			<h3>시설정보</h3>
			<p>${facility.f_info}</p>
		</div>
	</div>

	<div class="gym-sub-info1">
		<div class="gym-sub-info2">
			<h3>편의시설</h3>
			<div id="div_com_id_${facility.f_id}"></div>
		</div>
	</div>

	<div class="gym-sub-info1">
		<div class="gym-sub-info2">
			<table class="table">
				<thead>
					<tr>
						<th scope="col">기간</th>
						<th scope="col">가격</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td id="p_month_0_${facility.f_id}"></td>
						<td id="p_price_0_${facility.f_id}"></td>
					</tr>
					<tr>
						<td id="p_month_1_${facility.f_id}"></td>
						<td id="p_price_1_${facility.f_id}"></td>
					</tr>
					<tr>
						<td id="p_month_2_${facility.f_id}"></td>
						<td id="p_price_2_${facility.f_id}"></td>
					</tr>
					<tr>
						<td id="p_month_3_${facility.f_id}"></td>
						<td id="p_price_3_${facility.f_id}"></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<div class="gym-sub-info1">
		<div class="gym-sub-info2">
			<h3>사진</h3>
		</div>
		<div class="gym-sub-info3">
			<img class="gym-sub-img" src="../img/orange.png" alt="Card image cap">
			<img class="gym-sub-img" src="../img/orange.png" alt="Card image cap">
			<img class="gym-sub-img" src="../img/orange.png" alt="Card image cap">
			<img class="gym-sub-img" src="../img/orange.png" alt="Card image cap">
			<img class="gym-sub-img" src="../img/orange.png" alt="Card image cap">
			<img class="gym-sub-img" src="../img/orange.png" alt="Card image cap">
			<img class="gym-sub-img" src="../img/orange.png" alt="Card image cap">
		</div>
	</div>


	</bodyer>


	<%@include file="../include/footer.jsp"%>
</body>
</html>