<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript">
	window.onload = function() {
		frm.password.focus();
	}

	function enterkey() {
		if (window.event.keyCode == 13) {
			passwdCheck();
		}
	}
	function passwdCheck() {
		if (frm.password.value == "") {
			alert("비밀번호를 입력해주세요");
			frm.password.focus();
			return false;
		}

		frm.method = "post";
		frm.action = "checkPassword.do";
		frm.submit();
	}
</script>

<div class="container-fluid row justify-content-center align-items-center" style="height: 70vh; width: 100%;">
<div style="width: 30%; float:none; margin:0 auto">
	<form id="frm" name="frm" onsubmit="return false">
		<div class="input-group my-4 col-md-6" style="float: none; margin:0 auto;">
			<input type="password" name="password" onkeyup="enterkey()"
				placeholder="Enter Password..." required="required">
			<button type="button" class="btn btn-outline-secondary"
				onclick="passwdCheck();">확인</button>
		</div>
	</form>
	</div>
</div>