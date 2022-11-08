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
<script type="text/javascript">
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

function com(){
	$.ajax({
		url:"/fac"
	});
}

</script>
</head>
<body>
	<%@include file="../include/header.jsp"%>

	<bodyer>

	<div class="gym-main">
		<img class="gym-main-img" src="../img/blue.png" alt="Card image cap">
		<div class="gym-main-explain">
			<p class="gym-main-name">${facility.f_name}</p>
			&nbsp; &nbsp;
			<p><script type="text/javascript">
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
				cat1('${facility.f_id}')
			</script></p>
			<p>${facility.f_address}</p>
			<p>${facility.f_phone}</p>
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
			<p></p>
		</div>
	</div>

	<div class="gym-sub-info1">
		<div class="gym-sub-info2">
			<h3>가격정보</h3>
			<p>1개월</p>
			<p>3개월</p>
			<p>6개월</p>
			<p>12개월</p>
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

	<div class="gym-sub-info11">
		<div class="gym-sub-info2">
			<h3>리뷰</h3>
		</div>
	</div>
	</div>


	</bodyer>

	<%@include file="../include/footer.jsp"%>
</body>
</html>