<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="col-lg-10">
	<form id="frm">
		<div>
			<h3>비밀번호 변경</h3>
		</div>
		<div class="input-group mb-3 col-lg-4">
			<span class="input-group-text " style="width: 10%;">현재 비밀번호</span> <input type="password" name="currentPassword"
					id="currentPassword" onkeyup="enterkey()" aria-label="First name" >
		</div>
		<div class="input-group mb-3 col-lg-4">
			<span class="input-group-text " style="width: 10%;">새 비밀번호</span> <input type="password" name="password" id="password"
					onkeyup="enterkey()" aria-label="First name" >
		</div>
		<div class="input-group mb-3 col-lg-4">
			<span class="input-group-text " style="width: 10%;">새 비밀번호 확인</span> <input type="password" name="password2"
					onkeyup="enterkey()" aria-label="First name" >
		</div>
		<br>
		<button type="button" class="btn btn-outline-secondary"
			onclick="passwordCheck" id="btn">변경하기</button>
		&nbsp;&nbsp;&nbsp;
		<button type="button" class="btn btn-outline-secondary"
			onclick="location.href='myPage.do'">변경취소</button>
	</form>
</div>
<script type="text/javascript">
	window.onload = frm.currentPassword.focus();
	btn.addEventListener('click', passwordCheck);
	function passwordCheck() {
		fetch('ajaxChangePassword.do?', {
			method: 'post',
			headers: {'Content-Type': 'application/x-www-form-urlencoded'},
			body: 'currentPw=' + currentPassword.value +'&password=' + password.value
		})
		.then(response => response.text())
		.then(result => {
			if(result == 'success'){
				alert('비밀번호가 변경되었습니다.')
				location.href="myView.do";
				return;
			}
			if(result == 'fail'){
				alert('비밀번호가 일치하지 않습니다.')
				location.href="changePasswordForm.do";
				}
			
		})
	}
	function enterkey() {
		if (window.event.keyCode == 13) {
			passwordCheck();
		}
	}
	</script>