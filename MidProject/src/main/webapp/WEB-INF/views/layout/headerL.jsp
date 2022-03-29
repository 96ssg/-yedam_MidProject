<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="col-3 nav justify-content-end py-2">
	<c:choose>
		<c:when test="${role eq 'student' }">
			<div>${user.studentName }님 안녕하세요!</div>
		</c:when>
		<c:otherwise>
			<div>${user.profName }님 안녕하세요!</div>
		</c:otherwise>
	</c:choose>
	<div class="px-2">
		<a href="logout.do">로그아웃</a>
	</div>
</div>



<nav class="navbar navbar-expand-md bg-dark navbar-dark py-4">
	<div class="container-fluid">
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav h4">
				<li class="nav-item h1"><a class="navbar-brand" href="home.do">5조 학사관리</a></li>
				<c:choose>
					<c:when test='${role eq "student" }'>
						<li class="nav-item"><a class="nav-link" href="studentCourseList.do">성적</a></li>
						<li class="nav-item"><a class="nav-link" href="courseApplicationForm.do">수강신청</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="courseInsertList.do">성적</a></li>
					</c:otherwise>
				</c:choose>
				<li class="nav-item"><a class="nav-link" href="boardList.do">학과게시판</a></li>
				<li class="nav-item"><a class="nav-link" href="checkPasswordForm.do">마이페이지</a></li>
			</ul>
		</div>
	</div>
</nav>



