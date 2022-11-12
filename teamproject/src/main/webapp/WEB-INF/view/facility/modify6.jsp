</html><%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어디짐 - 운동할 땐,어디짐</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
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
					$("#div_com_" + i + "_" + input_id).append(data[i].com_name + " ")
				}

			}
		});
	}
	com('${facility.f_id }')
	</script>
	
	<style type="text/css">
* {
	box-sizing: border-box;
}

a {
	text-decoration: none; /* 기본 밑줄을 제거합니다 */
	color: #888;
}

header {
	margin: auto; /* header의 양쪽 여백(margin)을 동등하게 맞춤 -> 수평가운데정렬 */
	width: 1080px;
	height: 215px;
	display: flex;
	align-items: center; /* 하위 요소들 수직 가운데정렬 */
	position: relative;
	
}

.links { /* 링크들을 상단 우측에 위치시킵니다. */
	position: absolute;
	top: 0;
	right: 0;
}

fieldset {
	border: none; /* 기본 border 없애기(이 코드를 지우고 기본 border를 확인해보세요) */
}

.visually-hidden { /* legend 안보이게 설정. 이렇게하면 접근성을 준수하면서 디자인을 해치지 않습니다. */
	position: absolute !important;
	height: 1px;
	width: 1px;
	overflow: hidden;
	clip: rect(1px, 1px, 1px, 1px);
	clip: rect(1px, 1px, 1px, 1px);
	white-space: nowrap;
}

.links { /* 링크들을 상단 우측에 위치시킵니다. */
	position: absolute;
	top: 0;
	right: 0;
	
}

.link_text {
	font-size: 10px;
	margin-left: 5px;
}

.img_logo {
	margin-bottom: 12px;
	width: 220px;
	height: 65px;
}

.search_box {
	width: 520px;
	height: 50px;
	border: 2px solid #000000;
	display: flex;
	align-items: center;
	
}

.search_box input {
	flex: 9; /* search-box내부에서 9만큼의 크기를 차지(비율) */
	height: 46px;
	padding-left: 12px;
	padding-right: 12px;
	border: none;
	outline: none;
	font-size: 18px;
}

.search_box button {
	flex: 1; /* search-box내부에서 1만큼의 크기를 차지(비율) */
	height: 46px;
	margin: 0;
	padding: 0;
	border: none;
	outline: none;
	background: #ffffff;
	color: #000000;
}

.sublink {
	position: absolute;
	right: 0;
}
	
ul {
	margin: 0;
	padding: 0;
}

footer {
	width: 1080px;
	height: 220px;
	margin: auto;
	padding: 0 8px 0 8px;
	display: flex;
	flex-direction: row;
	font-size: 12px;
}

.foot1 {
	flex-direction: column;
}

.foot2 {
	flex-direction: column;
	margin-left: 200px;
}
.foot3 {
	flex-direction: column;
	margin-left: 200px;
}

.footer-content {
	margin-top: 50px;
}

.footer-content2 {
	margin-top: 50px;
}
.footer-content3{
	margin-top: 50px;
}
.footer-num {
	font-size: 30px;
	color: blue;
	margin-top: 20px;
	margin-bottom: 20px;
}

bodyer {
	margin:auto;
	width: 1080px;
	height: 100%;
	 flex-direction: column;
	display:flex;
	
	}
.form-control2{
 visibility: hidden;
}	
.gym-main-explain{
	border: solid 1px;
}
.register_cat{
	width:800px;
	height:100px;
	
}
.my_cat{
	font-weight:bold;
	font-size:20px;
	height:30px;
}
.
</style>
</head>
<body>

<%@include file="../include/header.jsp"%>
	
	<div class="container" >
	<h3>${facility.f_name } 편의시설</h3>
	<hr>
	
	<div id="div_com_0_${facility.f_id}" class="my_cat" >
	
	</div>
	<hr>
	<div id="div_com_1_${facility.f_id}" class="my_cat">
	
	</div>
	<hr>
	<div id="div_com_2_${facility.f_id}" class="my_cat">
	
	</div>
	<hr>
	<div id="div_com_3_${facility.f_id}" class="my_cat">
	
	</div>
	<hr>
	<div id="div_com_4_${facility.f_id}" class="my_cat">
	
	</div>
	<hr>
	<div id="div_com_5_${facility.f_id}" class="my_cat">
	
	</div>
	<hr>
	<div id="div_com_6_${facility.f_id}" class="my_cat">
	</div>
	
	<h3>${facility.f_name } 편의시설 관리</h3>
	<hr>
	<div class="row">
	<div class="col-sm">
	<p class="font-weight-bold">추가</p>
	<a href="registerComt?f_id=${facility.f_id }&com_id=1" role="button" class="btn btn-outline-info ml-2 mb-2">+ 주차장</a>
	<a href="registerCom?f_id=${facility.f_id }&com_id=2" role="button" class="btn btn-outline-info ml-2 mb-2">+ 샤워시설</a>
	<a href="registerCom?f_id=${facility.f_id }&com_id=3" role="button" class="btn btn-outline-info ml-2 mb-2">+ 운동복</a>
	<a href="registerCom?f_id=${facility.f_id }&com_id=4" role="button" class="btn btn-outline-info ml-2 mb-2">+ 수건</a>
	<a href="registerCom?f_id=${facility.f_id }&com_id=5" role="button" class="btn btn-outline-info ml-2 mb-2">+ 정수기</a>
	</div>
	<div class="col-sm">
	<p class="font-weight-bold">삭제</p>
	<a href="remove?f_id=${facility.f_id }&com_id=1" role="button" class="btn btn-outline-danger btn-primary ml-2" >-- 주차장</a>
	<a href="remove?f_id=${facility.f_id }&com_id=2" role="button" class="btn btn-outline-danger ml-2" >--  샤워시설</a>
	<a href="remove?f_id=${facility.f_id }&com_id=3" role="button" class="btn btn-outline-danger ml-2" >--  운동복</a>
	<a href="remove?f_id=${facility.f_id }&com_id=4" role="button" class="btn btn-outline-danger ml-2" >--  수건</a>
	<a href="remove?f_id=${facility.f_id }&com_id=5" role="button" class="btn btn-outline-danger ml-2" >--  정수기</a>
	</div>
	</div>
	
	
	</div>
	
	
	
	<%@include file="../include/footer.jsp"%>
	
		
</body>
</html>