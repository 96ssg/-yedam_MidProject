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
	<form name="PasswordChangeForm" action="changepassword.do" method="post">
		<table>
			<tr>
				<td align="center" colspan="2">:: 비밀번호 변경 ::</td>
			</tr>
			<tr>
				<td>사용중인 비밀번호</td>
				<td><input type="password" name="currpassword" required="required"></td>
			</tr>
			<tr>
				<td>새 비밀번호</td>
				<td><input type="password" name="password" required="required"></td>
			</tr>
			<tr>
				<td>새 비밀번호 확인</td>
				<td><input type="password" name="password2" required="required"></td>
			</tr>
		</table>
		<button type="button" onclick="passwordCheck(PasswordChangeForm)">변경하기</button>
		<button type="button" onclick="location.href='myPage.do'">변경취소</button>
	</form>
	
	<script type="text/javascript">
	function passwordCheck(PasswordChangeForm) {
		if(PasswordChangeForm.password.value != PasswordChangeForm.password2.value) {
			alert("새 비밀번호와 새 비밀번호 확인이 일치하지 않습니다.");
			PasswordChangeForm.password.value ="";
			PasswordChangeForm.password2.value ="";
			PasswordChangeForm.password.focus();
			
			return false;
		}
	}
	</script>
</body>
</html>