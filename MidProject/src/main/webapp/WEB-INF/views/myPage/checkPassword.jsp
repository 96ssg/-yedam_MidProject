<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>본인확인</title>
</head>
<body>
<script type="text/javascript">
	window.onload = function() {
		frm.s_password.focus();
	}
	
	function passwdCheck(form){
		if(form.s_password.value == "") {
			alert("비밀번호를 입력해주세요");
			frm.s_password.focus();
			return false;
		}
		
		frm.method="post";
		frm.action="myPage.do";
		frm.submit();
	}
</script>

	<form id="frm" name="frm">
		<table align="center">
			<tr>
				<td align="center">:::비밀번호 확인:::</td>
			</tr>
			<tr>
				<td>
					<table border="1">
						<tr>
							<td>현재 비밀번호</td>
							<td>
								<input type="password" name="s_password" placeholder="본인확인을 위해 비밀번호를 입력해주세요." required="required">
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<div align="center">
						<button type="button" onclick="passwdCheck(frm);">확인</button>
					</div>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>