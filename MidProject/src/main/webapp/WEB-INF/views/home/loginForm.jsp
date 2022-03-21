<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginForm.do</title>
</head>
<body>
	<h1>로그인 화면</h1>
	
	<form action="home.do" method="post" id="frm">
		<ul>
			<li>아이디 : <input type="text" name="loginId" id="loginId"></li>
			<li>비밀번호 : <input type="password" name="loginPassword" id="loginPassword"></li>
		</ul>
	</form>
	<input type="button" value="로그인" id="loginBtn">
	
	<h1>테스트</h1>
	<input type="button" value="교수 001001 로그인" onclick="location.href='home.do?loginId=001001'">
	<input type="button" value="학생 2011001001 로그인" onclick="location.href='home.do?loginId=2011001001'">
	
		
	<script>
		function login() {
			fetch('login.do?', {
				method: 'post',
				headers: {'Content-Type': 'application/x-www-form-urlencoded'},
				body: 'id=' + loginId.value
			})
			.then(response => response.json())
			.then(result => {

				// 아이디 오류
				if (result == null) {
					alert('아이디가 존재하지 않습니다.');
					loginId.value = '';
					loginId.focus();
					return;
				}

				// 비밀번호 오류
				if (loginPassword.value === result.userPassword) {
					alert('로그인 성공');
					frm.submit();
				} else {
					alert('비밀번호가 일치하지 않습니다.');
					loginPassword.value = '';
					loginPassword.focus();
				}
			})
		}
		
		loginBtn.addEventListener('click', login)
		frm.addEventListener('keydown', event => {
			if (event.key === 'Enter') login();
		})
	</script>

</body>
</html>