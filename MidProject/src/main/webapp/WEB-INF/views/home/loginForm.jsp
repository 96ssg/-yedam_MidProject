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
	<input type="button" value="학생 2011001001 로그인" onclick="login('2011001001', '1234')">
	<input type="button" value="학과장교수 001001 로그인" onclick="login('001001', '1234')">
	<input type="button" value="일반교수 002002 로그인" onclick="login('002002', '1234')">
	
		
	<script>
		function login(id, pw) {
			fetch('login.do?', {
				method: 'post',
				headers: {'Content-Type': 'application/x-www-form-urlencoded'},
				body: 'id=' + id + '&password=' + pw
			})
			.then(response => response.text())
			.then(result => {
				if (result === 'id') {
					alert('아이디가 존재하지 않습니다.');
					loginId.value = '';
					loginId.focus();
					return;
				}
				
				if (result === 'password') {
					alert('비밀번호를 확인하세요.');
					loginPassword.value = '';
					loginPassword.focus();
					return;
				}
				
				if (result === 'success') location.href='home.do';
			})
		}
		
		loginBtn.addEventListener('click', login);
		frm.addEventListener('keydown', event => {
			if (event.key === 'Enter') login(loginId.value, loginPassword.value);
		})
	</script>

</body>
</html>