<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<div class="col-lg-2 px-5" style="height: 70vh">
		<span class="fs-4">My Page</span>
		<hr>
		<ul class="nav nav-pills flex-column mb-auto">
			<li><a href="myView.do" class="nav-link link-dark">내 정보</a></li>
			<li><a href="changePasswordForm.do" class="nav-link link-dark">비밀번호 변경</a></li>
			<c:choose>
			<c:when test="${role eq 'student' }">
			<li><a href="studentCourseList.do" class="nav-link link-dark">성적</a></li>
			</c:when>
			<c:otherwise>
			<li><a href="courseInsertList.do" class="nav-link link-dark">내 강의/성적관리</a></li>
			<li><a href="chargeStudentList.do" class="nav-link link-dark">지도학생관리</a></li>
			</c:otherwise>
			</c:choose>
		</ul>
		<hr>
	</div>
