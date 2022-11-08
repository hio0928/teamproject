<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어디짐 - 운동할 땐,어디짐</title>
<script src="https://code.jquery.com/jquery-3.4.1.js" 
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<style>
* {
	box-sizing: border-box;
}

.login_logo {
	display: block;
	margin: auto;
}

.make-mem {
	text-align: center;
	margin-top: 30px;
}

.make-mem2 {
	width: 400px;
	height: 50px;
	font-weight: bold;
}

.make-mem2-id {
	width: 400px;
	height: 50px;
	font-weight: bold;
}

.make-id {
	text-align: center;
	
	margin-top: 30px;
}

.make-id2 {
	width: 400px;
	height: 50px;
	background: green;
	color: white;
	font-weight: bold;
	font-size: 20px;
	border: solid 1px white;
	border-radius: 12px;
}

.hr {
	width: 400px;
	margin-top: 30px;
	text-align: center;
}

.login-foot {
	text-align: center;
}

.login-foot2 {
	font-size: 12px;
}

.login-top {
	text-align: center;
}

.login-top2 {
	font-weight: bold;
}
.login-font {
	text-align: center;
	font-weight: bold;	
}

/* 중복아이디 존재하지 않는경우 */
.id_input_re_1 {
	color: green;
	display: none;
}
/* 중복아이디 존재하는 경우 */
.id_input_re_2 {
	color: red;
	display: none;
}

/* 유효성 검사 문구 */
.final_id_ck {
	display: none;
}

.final_pw_ck {
	display: none;
}

.final_pwck_ck {
	display: none;
}

.final_name_ck {
	display: none;
}

.final_phone_ck {
	display: none;
}

.final_addr_ck {
	display: none;
}
/* 비밀번호 확인 일치 유효성검사 */
.pwck_input_re_1 {
	color: green;
	display: none;
}

.pwck_input_re_2 {
	color: red;
	display: none;
}
.input_center{
	text-align:center;
}
</style>
</head>
<body>
	<div class="login-title">
		<a href="/JSPBook/home.jsp"><img src="../img/gym.png"
			class="login_logo" /></a>
	</div>
	<div class="login-top">
		<div class="login-top2">회원가입</div>
	</div>
	<form id="join_form" method="post">

		<div class="make-mem">
				
				<input type="text" id="id_input" name="u_id" class="make-mem2-id"
					placeholder="아이디">
		</div>
		<div class="input_center">
		<span class="id_input_re_1">사용 가능한 아이디입니다.</span> <span
			class="id_input_re_2">아이디가 이미 존재합니다.</span> <span class="final_id_ck">아이디를
			입력해주세요.</span>
			</div>
		<div class="make-mem">
			
				<input type="text" id="pw_input" name="u_passwd" class="make-mem2"
					placeholder="비밀번호">
			</div>
			<div class="input_center">
			<span class="final_pw_ck">비밀번호를 입력해주세요.</span> 
			</div>	
		<div class="make-mem">
			
				<input type="text" id="pwck_input" name="password" class="make-mem2"
					placeholder="비밀번호 확인">
			</div>
			<div class="input_center">
			<span class="final_pwck_ck">비밀번호 확인을 입력해주세요.</span>
			<span
				class="pwck_input_re_1">비밀번호가 일치합니다.</span> <span
				class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
			</div>

		<div class="make-mem">
			
				<input type="text" id="user_input" name="u_name" class="make-mem2"
					placeholder="이름">
			</div>
			<div class="input_center">
			<span class="final_name_ck">이름을 입력해주세요.</span>
			</div>

		<div class="make-mem">
			
				<input type="text" id="phone_input" name="u_phone" class="make-mem2"
					placeholder="전화번호">
			</div>
			<div class="input_center">
			<span class="final_phone_ck">전화번호를 입력해주세요.</span>
			</div>

		<div class="make-mem">
			
				<input type="text" id="address_input" name="u_address"
					class="make-mem2" placeholder="주소">
			</div>
			<div class="input_center">
			
			<span class="final_addr_ck">주소를 입력해주세요.</span>
		</div>
		<div class="make-id">
			<div class="">
				<input type="submit" class="make-id2" value="가입하기">
			</div>
		</div>
	</form>
	<hr class="hr">

	<div class="login-foot">
		<div class="login-foot2">©wheregym Corp. All rights reserved.</div>
	</div>
	<script>
		/* 유료성 검사 통과유무 변수*/
		var idCheck = false; // 아이디
		var idckCheck = false; // 아이디 중복 검사
		var pwCheck = false; // 비번
		var pwckCheck = false; // 비번 확인
		var pwckcorCheck = false; // 비번 확인 일치 확인
		var nameCheck = false; // 이름
		var addressCheck = false; // 주소

		$(document).ready(function() {
			//회원가입 버튼(회원가입 기능 작동)
			$(".make-id2").click(function() {

				/* 입력값 변수 */
				var id = $('#id_input').val(); // id 입력란
				var pw = $('#pw_input').val(); // 비밀번호 입력란
				var pwck = $('#pwck_input').val(); // 비밀번호 확인 입력란
				var name = $('#user_input').val(); // 이름 입력란
				var mail = $('#phone_input').val(); // 이메일 입력란
				var addr = $('#address_input').val(); // 주소 입력란

				/* 아이디 유효성검사 */
				if (id == "") {
					$('.final_id_ck').css('display', 'block');
					idCheck = false;
				} else {
					$('.final_id_ck').css('display', 'none');
					idCheck = true;
				}

				/* 비밀번호 유효성 검사 */
				if (pw == "") {
					$('.final_pw_ck').css('display', 'block');
					pwCheck = false;
				} else {
					$('.final_pw_ck').css('display', 'none');
					pwCheck = true;
				}

				/* 비밀번호 확인 유효성 검사 */
				if (pwck == "") {
					$('.final_pwck_ck').css('display', 'block');
					pwckCheck = false;
				} else {
					$('.final_pwck_ck').css('display', 'none');
					pwckCheck = true;
				}
				
				
				 /* 이름 유효성 검사 */
		        if(name == ""){
		            $('.final_name_ck').css('display','block');
		            nameCheck = false;
		        }else{
		            $('.final_name_ck').css('display', 'none');
		            nameCheck = true;
		        }
				 
		        /* 이메일 유효성 검사 */
		        if(phone == ""){
		            $('.final_phone_ck').css('display','block');
		            phoneCheck = false;
		        }else{
		            $('.final_phone_ck').css('display', 'none');
		            phoneCheck = true;
		        }
		        
		        /* 주소 유효성 검사 */
		        if(addr == ""){
		            $('.final_addr_ck').css('display','block');
		            addressCheck = false;
		        }else{
		            $('.final_addr_ck').css('display', 'none');
		            addressCheck = true;
		        }
		        
		        /* 최종 유효성 검사 */
		        if(idCheck&&idckCheck&&pwCheck&&pwckCheck&&pwckcorCheck&&nameCheck&&phoneCheck&&addressCheck ){
		        	$("#join_form").attr("action", "/user/register");
		            $("#join_form").submit();
		        }    
		        
		        return false; 
		 

				//$("#join_form").attr("action", "/user/register");
				//$("#join_form").submit();
				
				
			});
		});

		//아이디 중복검사
		$('.make-mem2-id').on(
				"propertychange change keyup paste input",
				function() {

					//console.log("keyup 테스트");

					//			alert("cllick");

					var u_Id = $('.make-mem2-id').val(); // make-mem2-id에 입력되는 값
					var data = {
						u_Id : u_Id
					} // '컨트롤에 넘길 데이터 이름' : '데이터(.id에 입력되는 값)'

					$.ajax({
						type : "post",
						url : "/u_IdChk",
						data : data,
						success : function(result) {
							//console.log("성공 여부" + result);
							if (result != 'fail') {
								$('.id_input_re_1').css("display",
										"inline-block");
								$('.id_input_re_2').css("display", "none");
								// 아이디 중복이 없는 경우
								idckCheck = true;
							} else {
								$('.id_input_re_2').css("display",
										"inline-block");
								$('.id_input_re_1').css("display", "none");
								// 아이디 중복된 경우
								idckCheck = false;
							}
						}// success 종료
					}); // ajax 종료	
				});// function 종료
		/* 비밀번호 확인 일치 유효성 검사 */

		$('#pwck_input').on("propertychange change keyup paste input",
				function() {

					var pw = $('#pw_input').val();
					var pwck = $('#pwck_input').val();
					$('.final_pwck_ck').css('display', 'none');

					if (pw == pwck) {
						$('.pwck_input_re_1').css('display', 'block');
						$('.pwck_input_re_2').css('display', 'none');
						pwckcorCheck = true;
					} else {
						$('.pwck_input_re_1').css('display', 'none');
						$('.pwck_input_re_2').css('display', 'block');
						pwckcorCheck = false;
					}

				});
	</script>

</body>
</html>