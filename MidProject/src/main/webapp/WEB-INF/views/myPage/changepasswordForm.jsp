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
	<form name="PasswordChangeForm">
		<table>
			<tr>
				<td align="center" colspan="2">:: 비밀번호 변경 ::</td>
			</tr>
			<tr>
				<td>사용중인 비밀번호</td>
				<td><input type="password" name="currpassword"></td>
			</tr>
			<tr>
				<td>새 비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td>새 비밀번호 확인</td>
				<td><input type="password" name="password2"></td>
			</tr>
		</table>
		<button type="button" onclick="passwordCheck(PasswordChangeForm)">변경하기</button>
		<button type="button" onclick="location.href='myPage.do'">변경취소</button>
	</form>
	
	<script type="text/javascript">
	window.onload = function() {
		PasswordChangeForm.currpassword.focus();
	}
	function passwordCheck(form) {
		if(form.currpassword.value="") {
			alert("현재 비밀번호를 입력해주세요.");
			form.currpassword.focus();
			
			return false;
		}
		
		if(form.password.value=="") {
			alert("변경하실 비밀번호를 입력해주세요.");
			form.password.focus();
			return false;
		}
		
		if(form.password2.value == "") {
			alert("새 비밀번호 확인을 입력해주세요.");
			form.password.focus();
			return false;
		}
		
		if(form.password.value != form.password2.value) {
			alert("새 비밀번호와 새 비밀번호 확인이 일치하지 않습니다.");
			form.password.value ="";
			form.password2.value ="";
			form.password.focus();
			
			return false;
		}
		
		form.method = "post";
		form.action = "changePassword.do";
		form.submit();
	}
	</script>
</body>
</html>