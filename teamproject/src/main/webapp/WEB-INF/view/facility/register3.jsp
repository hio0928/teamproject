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
<link rel="stylesheet" href="../resources/css/bootstrap.min.css"/>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	let index = 1;
	
	const add_inputBox = () => {
		const box = document.getElementById("box");
        const newD = document.createElement('div');
        let str1 = "<div class='input-group mb-3'>";
        str1 += "<input type='hidden' name='priceDTOList["+index+"].f_id' value='f2'>";
        str1 += "<input type='text' class='form-control' name='priceDTOList["+index+"].p_month' placeholder='개월'>";
        str1 += "<input type='text' class='form-control' name='priceDTOList["+index+"].p_price' placeholder='가격'>";
        str1 += "<button class='btn btn-outline-secondary' type='button' onclick='remove(this)'>- 삭제</button>";
        str1 += "</div>";
        newD.innerHTML = str1;
        index++;
		box.appendChild(newD);
	}
	const remove = (obj) => {
		document.getElementById('box').removeChild(obj.parentNode.parentNode);
	}
	
	
</script>
</head>
<body>
<script>
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
						$("#p_month_"+ i + "_" + input_id).append(data[i].p_month + "개월")
						$("#p_price_"+ i + "_" + input_id).append(data[i].p_price + "원")
					}

				}
			});
		}
		
		
		price('f1')
		
	</script>
	<%@include file="../include/header.jsp"%>

	<bodyer>
	
	<div class="gym-sub-info pb-3">

		<div class="gym-sub-info2">
			<h3>가 격</h3>
			<table class="table mr-3">
				<thead>
					<tr>
						<th scope="col">기간</th>
						<th scope="col">가격</th>
						<th scope="col"></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td id="p_month_0_f1"></td>
						<td id="p_price_0_f1"></td>
						<td><button type="button" class="btn btn-danger float-right">- 삭제</button></td>
					</tr>
					<tr>
						<td id="p_month_1_f1"></td>
						<td id="p_price_1_f1"></td>
						<td><button type="button" class="btn btn-danger float-right">- 삭제</button></td>
					</tr>
					<tr>
						<td id="p_month_2_f1"></td>
						<td id="p_price_2_f1"></td>
						<td><button type="button" class="btn btn-danger float-right">- 삭제</button></td>
					</tr>
					<tr>
						<td id="p_month_3_f1"></td>
						<td id="p_price_3_f1"></td>
						<td><button type="button" class="btn btn-danger float-right">- 삭제</button></td>
					</tr>
				</tbody>
			</table>	
		</div>
	</div>


	<div class="gym-sub-info">

		<div class="gym-sub-info2">
			<form role="form" action="/facility/register3" method="post">
				<div id="box" class="mr-4">
					<div class="input-group mb-3">
						<input type="hidden" name="priceDTOList[0].f_id" value="f2">
						<input type="number" class="form-control" name="priceDTOList[0].p_month" placeholder="개월">
						<input type="number" class="form-control" name="priceDTOList[0].p_price" placeholder="가격(원)">
						<button class="btn btn-outline-secondary" type="button"
							onclick="add_inputBox()">+ 추가</button>
					</div>
				</div>
				<input type="submit" class="btn btn-primary float-right mr-3" value="완료">
			</form>

		</div>
	</div>




	</bodyer>

	<%@include file="../include/footer.jsp"%>
</body>
</html>