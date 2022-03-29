<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - 비밀번호 변경</title>
</head>
<body>
	<div>
		<h3>비밀번호 변경</h3>
	</div>
	<form id="frm">
		<table>
			<tr>
				<td align="center" colspan="2">:: 비밀번호 변경 ::</td>
			</tr>
			<tr>
				<td>사용중인 비밀번호</td>
				<td><input type="password" name="currentPassword"
					id="currentPassword"></td>
			</tr>
			<tr>
				<td>새 비밀번호</td>
				<td><input type="password" name="password" id="password"></td>
			</tr>
			<tr>
				<td>새 비밀번호 확인</td>
				<td><input type="password" name="password2"></td>
			</tr>
		</table>
		<button type="button" onclick="passwordCheck" id="btn">변경하기</button>
		<button type="button" onclick="location.href='myPage.do'">변경취소</button>
	</form>


	<script type="text/javascript">
	
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
				location.href="myPage.do";
				return;
			}
			if(result == 'fail'){
				alert('비밀번호가 일치하지 않습니다.')
				location.href="changePasswordForm.do";
				}
			
		})

	}
	</script>
</body>
</html>