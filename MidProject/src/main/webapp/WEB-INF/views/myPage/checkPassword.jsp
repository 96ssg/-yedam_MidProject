<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>본인확인</title>
</head>
<body>
	<form id="frm" method="post">
		<table align="center" border="1">
			<tr>
				<td align="center">:::비밀번호 확인:::</td>
			</tr>
			<tr>
				<td>
					<table border="1">
						<tr>
							<td>현재 비밀번호</td>
							<td width="320">
								<input type="password" id="password" name="password" placeholder="비밀번호를 입력해주세요." required="required" size="50">
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<div align="center">
						<button type="button" id="check">확인</button>
					</div>
				</td>
			</tr>
		</table>
	</form>
	<script type="text/javascript">
		function passwdCheck() {
			fetch('ajaxCheckPassword.do?', {
				method: 'post',
				headers: {'Content-Type': 'application/x-www-form-urlencoded'},
			})
			.then(response => response.json())
			.then(result => { 
				console.log(result)
				if (password.value != result.userPassword) {
					alert('비밀번호가 일치하지 않습니다.');
					password.value = '';
					password.focus();
					return;
				}
				
				alert("본인확인이 완료되었습니다.");
				if (password.value == result.userPassword) {
					frm.setAttribute("action", "myPage.do");
					frm.submit();
				}
			})
		}
		
		check.addEventListener('click', passwdCheck)
	</script>
</body>
</html>