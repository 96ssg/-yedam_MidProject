<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginForm.do</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
.divider:after,
.divider:before {
  content: "";
  flex: 1;
  height: 1px;
  background: #eee;
}
.h-custom {
  height: calc(100% - 73px);
}
@media (max-width: 450px) {
  .h-custom {
    height: 100%;
  }
}
</style>
</head>
<body>

	<section class="vh-100">
	  <div class="container-fluid h-custom">
	    <div class="row d-flex justify-content-center align-items-center h-100">
	      <div class="col-md-9 col-lg-6 col-xl-5" align="center">
	        <img src="images/logo.png" alt="logo"class="img-fluid" width="400px" >
	      </div>
	      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
	        <form id="frm">
	          <!-- Email input -->
	          <div class="form-outline mb-4">
	            <input type="text" id="loginId" name="loginId" class="form-control form-control-lg"
	              placeholder="아이디를 입력하세요" required/>
	          </div>
	
	          <!-- Password input -->
	          <div class="form-outline mb-3">
	            <input type="password" id="loginPassword" name="loginPassword" class="form-control form-control-lg"
	              placeholder="비밀번호를 입력하세요" />
	          </div>
	
	          <div class="text-center text-lg-start mt-4 pt-2">
	            <button type="button" class="btn btn-primary btn-lg" id="loginBtn"
	              style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
	          </div>
	
	        </form>
	            <button type="button" class="btn btn-primary btn-lg" id="loginBtn"
	              style="padding-left: 2.5rem; padding-right: 2.5rem;" onclick="login('2011001001', '1234')">학생 2011001001 로그인</button>
	            <button type="button" class="btn btn-primary btn-lg" id="loginBtn"
	              style="padding-left: 2.5rem; padding-right: 2.5rem;" onclick="login('001001', '1234')">학과장교수 001001 로그인</button>
	            <button type="button" class="btn btn-primary btn-lg" id="loginBtn"
	              style="padding-left: 2.5rem; padding-right: 2.5rem;" onclick="login('002002', '1234')">일반교수 002002 로그인</button>
	      </div>
	    </div>
	  </div>
	</section>

	
		
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
		
		document.querySelector('#loginBtn').addEventListener('click', () => login(loginId.value, loginPassword.value));
		frm.addEventListener('keydown', event => {
			if (event.key === 'Enter') login(loginId.value, loginPassword.value);
		})
	</script>

</body>
</html>