<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
bodyer {
	margin:auto;
	width: 1080px;
	height: 100%;
	 flex-direction: column;
	display:flex;
	
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
.main {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr;
	
}
.empty {
	
	width: 1080px;
	height: 50px;
	margin: auto;
display: flex;
}
.card{
	border: solid 1px grey;
	margin:3px;
}
.main-title{
	
}
.card-img-top{
 width:355px;
 height:200px;
}
.card-body{
 width:355px;
 height:130px;
 }
.foot2-1{
	margin-top:30px;
}
.gymSite-title{
	
	}
.gym-main{
 width: 1080ox;
 height: 400px;
 
 margin-top:30px;
 display:flex;
}
.gym-main-img{
width:400px;
height:400px;
}
.gym-main-explain{
	width:680px;
	height:400px;
	margin-left: 20px;
}
.gym-main-name{
	font-size: 40px;
	font-weight:bold;
	
	
}
.gym-main-pay{
width:560px;
height: 70px;
text-align: center;
background: blue;
color: white;
font-size: 20px;
font-weight:bold;
border: solid 1px white;
padding:20px;
border-radius: 12px;
}
.gym-sub {
 width: 1080px;
 height:100%;
 margin-top:10px;
 display: flex;
 border:solid 1px black;
 flex-direction: column;
}
.gym-sub-info{
	margin-top:40px;
	margin-left:20px;
	border:solid 1px grey;
	width:1040px;
	height: 100%;
	
}
.gym-sub-info1{
	margin-top:10px;
	margin-left:20px;
	border:solid 1px grey;
	width:1040px;
	height: 100%;
	
}
.gym-sub-info11{
	margin-top:10px;
	margin-left:20px;
	margin-bottom:40px;
	border:solid 1px grey;
	width:1040px;
	height: 100%;
}
.gym-sub-info2 {
	margin-left:50px;
	margin-top:50px;
}
.gym-sub-info3 {
	
	margin-left:9px;
}
.gym-sub-img{
	width:200px;
	height:200px;
}
.gym-create-img{
	width:400px;
	height:400px;
	background:grey;
}
.gym-create-img2{
	
}
.gym-create-img3{
	background: white;
	color: black;
}
.gym-submit{
	background: grey;
	color:black;
	width:200px;
	height:90px;
	border: solid 1px white;
	font-weight:bold;
	font-size:25px;
	border-radius: 12px;
	
}
.gym-submit2{
	
	text-align:center;
}
.register-text{
	color:red;
	font-weight:bold;
	font-size:30px;
}
.register-box{
	margin-top:20px;
	border: 3px solid black;
}
.register-text2{
	width:725px;
	height: 50px;
	font-weight:bold;
	font-size:20px;
}
.catrgory{
	width:300px;
	height:140px;
}
.modal-background {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100vh;
        background-color: rgba(0, 0, 0, 0.3);
        z-index: 1000;

        /* 숨기기 */
        z-index: -1;
        opacity: 0;
      }

      .modal-show {
        opacity: 1;
        z-index: 1000;
        transition: all 0.5s;
      }

      .modal-window {
        position: relative;
        width: 100%;
        height: 100%;
      }

      .modal-popup {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -40%);
        background-color: #ffffff;
        box-shadow: 0 2px 7px rgba(0, 0, 0, 0.3);
        width: 400px;
        height: 980px;

        
      }
      .modal-design{
      width:200px;
      height:60px;
      }

      .modal-show .popup {
        transform: translate(-50%, -50%);
        transition: all 0.5s;
      }
</style>
