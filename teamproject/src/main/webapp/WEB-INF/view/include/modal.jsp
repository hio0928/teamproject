<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<button id="modal-show" class="modal-design">운동시설예시 열기</button>
	<div class="modal-background">
		<div class="modal-window">
			<div class="modal-popup">
				<button id="modal-close">
					예시닫기 <img src="../img/getGym.png">
				</button>
			</div>
			<div>
				<div></div>
			</div>
		</div>
	</div>

	<script>
		function show() {
			document.querySelector(".modal-background").className = "modal-background modal-show";
		}

		function close() {
			document.querySelector(".modal-background").className = "modal-background";
		}

		document.querySelector("#modal-show").addEventListener("click", show);
		document.querySelector("#modal-close").addEventListener("click", close);
	</script>