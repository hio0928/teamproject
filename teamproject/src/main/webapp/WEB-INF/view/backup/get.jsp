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
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
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
		<img class="gym-main-img" src="../resources/img/thumbImg.png" alt="Card image cap">
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
		<div class="gym-sub-info2 mb-3">
			<h3>편의시설</h3>
			<div id="div_com_id_${facility.f_id}"></div>
		</div>
	</div>

	<div class="gym-sub-info1 ">
		<div class="gym-sub-info2">
			<h3>가격</h3>
			<table class="table mr-3">
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
			<img class="gym-sub-img" src="../resources/img/SampleImg.png" alt="Card image cap">
			<img class="gym-sub-img" src="../resources/img/SampleImg.png" alt="Card image cap">
			<img class="gym-sub-img" src="../resources/img/SampleImg.png" alt="Card image cap">
			<img class="gym-sub-img" src="../resources/img/SampleImg.png" alt="Card image cap">
			<img class="gym-sub-img" src="../resources/img/SampleImg.png" alt="Card image cap">
		</div>
	</div>
	<!--        리뷰 파트       -->
	<div class="reply_subject">
		<h2>리뷰</h2>
	</div>
	<c:if test="${user != null }">
		<div class="reply_button_wrap">
			<button>리뷰쓰기</button>
		</div>
	</c:if>
	
	<div class="reply_not_div">
					
				</div>
				<ul class="reply_content_ul">
					<!-- 
					<li>
						<div class="comment_wrap">
							<div class="reply_top">
								<span class="id_span">sjinjin7</span>
								<span class="date_span">2021-10-11</span>
								<span class="rating_span">평점 : <span class="rating_value_span">4</span>점</span>
								<a class="update_reply_btn">수정</a><a class="delete_reply_btn">삭제</a>
							</div>
							<div class="reply_bottom">
								<div class="reply_bottom_txt">
									사실 기대를 많이하고 읽기시작했는데 읽으면서 가가 쓴것이 맞는지 의심들게합니다 문체도그렇고 간결하지 않네요 제가 기대가 크던 작았던간에 책장이 사실 안넘겨집니다.
								</div>
							</div>
						</div>
					</li>
					 -->
				</ul>
				<div class="repy_pageInfo_div"> 
					<ul class="pageMaker">
					<!--					
						<li class="pageMaker_btn prev">
							<a>이전</a>
						</li>
						<li class="pageMaker_btn">
							<a>1</a>
						</li>
						<li class="pageMaker_btn">
							<a>2</a>
						</li>
						<li class="pageMaker_btn active">
							<a>3</a>
						</li>													
						<li class="pageMaker_btn next">
							<a>다음</a>
						</li>
					 -->						
					</ul>
				</div>
					
				
	</bodyer>


	<%@include file="../include/footer.jsp"%>
	<script>
	/* 리뷰 부분 */
	
	$(document).ready(function(){
		
	/* 리뷰 리스트 출력 */
		
		const f_id = '${facility.f_id}';	
		$.getJSON("/reply/list", {f_id : f_id}, function(obj){
			
			makeReplyContent(obj);
		});		
		
	});
	
	$(".reply_button_wrap").on("click", function(e){
		
		e.preventDefault();
		
		const u_id = '${user.u_id}';
		const f_id = '${facility.f_id}';
		$.ajax({
			data : {
				f_id : f_id,
				u_id : u_id
			},
			url : '/reply/check',
			type : 'POST',
			success : function(result){
				
				if(result === '1'){
					alert("등록된 리뷰가 존재합니다.")
				} else if(result ==='0'){
					let popUrl = "/facility/replyEnroll/" + u_id + "?f_id=" + f_id;
					let popOption = "width = 490px, height=350px, top+300px, left=300px,scrollbars=yes";
					
					window.open(popUrl,"리뷰 쓰기",popOption);
					
				}
			}
		});
		
	});
	
	/* 댓글 페이지 이동 버튼 동작 */
	$(document).on('click', '.pageMaker_btn a', function(e){
			
		e.preventDefault();
		
		let page = $(this).attr("href");	
		cri.pageNum = page;		
		
		replyListInit()
	 });
		
	

	/* 댓글 페이지 정보 */
	 const cri = {
		f_id : '${facility.f_id}',
		pageNum : 1,
		amount : 10
	}	
	
	
	/* 댓글 데이터 서버 요청 및 댓글 동적 생성 메서드 */
	let replyListInit = function(){
		$.getJSON("/reply/list", cri , function(obj){
			
			makeReplyContent(obj);
			
		});		
	}
	
	/* 리뷰 수정 버튼 */
	$(document).on('click', '.update_reply_btn', function(e){
		
			e.preventDefault();
			
			let replyId = $(this).attr("href");
			let popUrl = "/facility/replyUpdate?replyId=" + replyId + "&?f_id=" + '${facility.f_id}' + "&u_id=" + '${user.u_id}';
			let popOption = "width = 490px, height=350px, top+300px, left=300px,scrollbars=yes";
			
			window.open(popUrl,"리뷰 수정",popOption);
	});
	/* 리뷰 삭제 버튼 */
	$(document).on('click', '.delete_reply_btn', function(e){
		
		e.preventDefault();
		let replyId = $(this).attr("href");
		
		$.ajax({
				data : {
						replyId : replyId,
						f_id : '${facility.f_id}'
				},
				url : '/reply/delete',
				type : 'POST',
				success : function(result){
					replyListInit();
					alert('삭제되었습니다.');
				}
		});
	});
	
	/* 댓글(리뷰) 동적 생성 메서드 */
	function makeReplyContent(obj){
		
		if(obj.list.length === 0){
			$(".reply_not_div").html('<span>리뷰가 없습니다.</span>');
			$(".reply_content_ul").html('');
			$(".pageMaker").html('');
		} else{
			
			$(".reply_not_div").html('');
			
			const list = obj.list;
			const pf = obj.pageInfo;
			const userId = '${user.u_id}';		
			
			/* list */
			
			let reply_list = '';			
			
			$(list).each(function(i,obj){
				reply_list += '<li>';
				reply_list += '<div class="comment_wrap">';
				reply_list += '<div class="reply_top">';
				/* 아이디 */
				reply_list += '<span class="id_span">'+ obj.u_id+'</span>';
				/* 날짜 */
				reply_list += '<span class="date_span">'+ obj.regDate +'</span>';
// 				<a class="update_reply_btn" href="'+ obj.replyId +'">수정</a>
				if(obj.u_id === userId){
					reply_list += '<a class="delete_reply_btn" href="'+ obj.replyId +'">삭제</a>';
				}
				reply_list += '</div>'; //<div class="reply_top">
				reply_list += '<div class="reply_bottom">';
				reply_list += '<div class="reply_bottom_txt">'+ obj.content +'</div>';
				reply_list += '</div>';//<div class="reply_bottom">
				reply_list += '</div>';//<div class="comment_wrap">
				reply_list += '</li>';
			});		
			
			$(".reply_content_ul").html(reply_list);			
			
			/* 페이지 버튼 */
			
			let reply_pageMaker = '';	
			
				/* prev */
				if(pf.prev){
					let prev_num = pf.pageStart -1;
					reply_pageMaker += '<li class="pageMaker_btn prev">';
					reply_pageMaker += '<a href="'+ prev_num +'">이전</a>';
					reply_pageMaker += '</li>';	
				}
				/* numbre btn */
				for(let i = pf.pageStart; i < pf.pageEnd+1; i++){
					reply_pageMaker += '<li class="pageMaker_btn ';
					if(pf.cri.pageNum === i){
						reply_pageMaker += 'active';
					}
					reply_pageMaker += '">';
					reply_pageMaker += '<a href="'+i+'">'+i+'</a>';
					reply_pageMaker += '</li>';
				}
				/* next */
				if(pf.next){
					let next_num = pf.pageEnd +1;
					reply_pageMaker += '<li class="pageMaker_btn next">';
					reply_pageMaker += '<a href="'+ next_num +'">다음</a>';
					reply_pageMaker += '</li>';	
				}	
				
				console.log(reply_pageMaker);
			$(".pageMaker").html(reply_pageMaker);				
			
		}		
		
	}
	


</script>
</body>
</html>