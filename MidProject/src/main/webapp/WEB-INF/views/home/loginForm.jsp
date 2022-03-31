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
      <div class="col-md-9 col-xl-5 d-none d-xl-block" align="center">
      	<div style="height: 40vh; border-right: 10px solid lightgrey;">
        	<img src="images/logo.png" alt="logo" class="img-fluid" width="400px" style="padding-top: 25%">
        </div>
      </div>
      <div class="col-md-9 col-xl-5 d-xl-none" align="center">
      	<div style="height: 40vh; border-bottom: 10px solid lightgrey;">
        	<img src="images/logo.png" alt="logo" class="img-fluid" width="400px" style="padding-top: 25%">
        </div>
      </div>
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
        <div id="loginForm">
          <!-- Email input -->
          <div class="form-outline mb-4">
            <input type="text" id="loginId" name="loginId" class="form-control form-control-lg"
              placeholder="아이디를 입력하세요"/>
            <label class="form-label" for="form3Example3">아이디</label>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-3">
            <input type="password" id="loginPassword" name="loginPassword" class="form-control form-control-lg"
              placeholder="비밀번호를 입력하세요" />
            <label class="form-label" for="form3Example4">비밀번호</label>
          </div>

          <div class="text-center text-lg-start mt-4 pt-2">
            <button type="button" class="btn btn-primary btn-lg" id="loginBtn"
              style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-secondary">
  	<input type="button" value="학생 2011001001 로그인" onclick="login('2011001001', '1234')">
	<input type="button" value="학과장교수 001001 로그인" onclick="login('001001', '1234')">
	<input type="button" value="일반교수 002002 로그인" onclick="login('002002', '1234')">
    <!-- Copyright -->
    <div class="text-white mb-3 mb-md-0">
      Copyright © 2020. All rights reserved.
    </div>
  </div>
</section>

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
		
		loginBtn.addEventListener('click', () => login(loginId.value, loginPassword.value));
		loginForm.addEventListener('keydown', event => {
			if (event.key === 'Enter') login(loginId.value, loginPassword.value);
		})
	</script>

</body>
</html>