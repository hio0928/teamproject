<%@ page language="java" contentType="text/html; charset=UTF-8"
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
	
</style>
</head>
<body>

<%@include file="../include/header.jsp"%>
	
	<div class="container" >
	<a href="/facility/register1" role="button" class="btn btn-primary float-right">시설 등록</a>
	
	<h2>운동시설 관리</h2>
	<hr>
	<c:forEach items="${listFacility}" var="facility">
		
		<div class="row">
 			<div class="col-7" >
 				<p class="text-left mt-2"><c:out value="${facility.f_name}"/></p>
 				<p class="text-left mt-2"><c:out value="${facility.f_address }"/></p>
 				<p class="text-left mt-2"><c:out value="${facility.f_phone }"/></p>
 			</div>
			<div class="col-5" >
				<a href='/facility/modify5?f_id=<c:out value="${facility.f_id }"/>' role="button" class="btn btn-success ">수정</a>
				<a href='/facility/modify5?f_id=<c:out value="${facility.f_id }"/>' role="button" class="btn btn-danger">삭제</a>
			
				<a href='/facility/register3?f_id=<c:out value="${facility.f_id }"/>' role="button" class="btn btn-primary">가격정보관리</a>
				<p></p>
				<a href='/facility/modify5?f_id=<c:out value="${facility.f_id }"/>' role="button" class="btn btn-primary ">카테고리관리</a>
				<a href='/facility/modify6?f_id=<c:out value="${facility.f_id }"/>' role="button" class="btn btn-primary">편의시설관리</a>
			</div>
			
			
				
		</div>
		<hr>
		</c:forEach>
	</div>
	<div>
		<%@include file="../include/footer.jsp"%>
	
	</div>


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script>
		$("#delete_btn").click(function(){
			
		})
	</script>	
		
</body>
</html>