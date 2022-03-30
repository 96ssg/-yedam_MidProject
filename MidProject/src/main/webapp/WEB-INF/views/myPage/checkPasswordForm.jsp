<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript">
	window.onload = function() {
		frm.password.focus();
	}
	
	function enterkey(){
		if(window.event.keyCode == 13){
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
<div class="container" align="center">
	<form id="frm" name="frm" onsubmit="return false">
		<table>
			<tr>
				<td align="center">:::비밀번호 확인:::</td>
			</tr>
			<tr>
				<td>
					<table border="1">
						<tr>
							<td>현재 비밀번호</td>
							<td><input type="password" name="password" onkeyup="enterkey()"
								placeholder="본인확인을 위해 비밀번호를 입력해주세요." required="required">
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<button type="button" class="btn btn-outline-secondary" onclick="passwdCheck();">확인</button>
				</td>
			</tr>
		</table>
	</form>
</div>