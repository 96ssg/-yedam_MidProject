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
	<form method="post" action="changePassword.do" onsubmit="return passwordCheck()">
		<table>
			<tr>
				<td align="center" colspan="2">:: 비밀번호 변경 ::</td>
			</tr>
			<tr>
				<td>새 비밀번호</td>
				<td><input type="password" id="password" name="password" required="required"></td>
			</tr>
			<tr>
				<td>새 비밀번호 확인</td>
				<td><input type="password" id="password2" name="password2" required="required"></td>
			</tr>
		</table>
		<input type="submit" value="변경하기"/>
		<button type="button" onclick="location.href='myPage.do'">변경취소</button>
	</form>
	
	<script type="text/javascript">
	function passwordCheck() {
		if( $("#password").val() != $("#passwrod2").val() ) {
			alert("패스워드가 일치하지 않습니다.");
			$("#password").val('');
			$("#password2").val('');
			$("#password").focus();
			return false;
		}
		return true;
	}
</script>
</body>
</html>