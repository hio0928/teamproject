<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어디짐 - 운동할 땐,어디짐</title>
<%@include file="../include/style.jsp"%>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css"/>
<script>
	const add_inputBox = () => {
		const box = document.getElementById("box");
        const newD = document.createElement('div');
        let str1 = "<div class='input-group mb-3'>";
        str1 += "<input type='text' class='form-control' name='p_month' placeholder='개월'>";
        str1 += "<input type='text' class='form-control' name='p_price' placeholder='가격'>";
        str1 += "<button class='btn btn-outline-secondary' type='button' id='button-addon2'>";
        str1 += "+ 추가</button>";
        str1 += "<input type='button' value='삭제' onclick='remove(this)'>";
        str1 += "</div>";
        newD.innerHTML = str1
		box.appendChild(newD);
	}
	const remove = (obj) => {
		document.getElementById('box').removeChild(obj.parentNode.parentNode);
	}
</script>
</head>
<body>
	<%@include file="../include/header.jsp"%>

	<bodyer>


	<div class="gym-sub-info">

		<div class="gym-sub-info2">
			<form role="form" action="/facility/register2" method="post">
				<div id="box">
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="개월">
						<input type="text" class="form-control" placeholder="가격">
						<button class="btn btn-outline-secondary" type="button"
							onclick="add_inputBox()">+ 추가</button>
					</div>
				</div>
				<input type="submit" class="btn btn-primary" value="등록">
			</form>

		</div>
	</div>




	</bodyer>

	<%@include file="../include/footer.jsp"%>
</body>
</html>