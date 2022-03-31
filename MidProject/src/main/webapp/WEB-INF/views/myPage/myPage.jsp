<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<div class="col-lg-10" align="center">
	<c:choose>
			<c:when test="${role eq 'student' }">
				<span class="d-none d-sm-inline">${user.studentName }님의 MyPage</span>&nbsp;&nbsp;&nbsp;
			</c:when>
			<c:when test="${role eq 'admin' }">
				<span class="d-none d-md-inline">${user.profName }님의 MyPage</span>&nbsp;&nbsp;&nbsp;
			</c:when>
			<c:otherwise>
				<span class="d-none d-md-inline">${user.profName }님의 MyPage</span>&nbsp;&nbsp;&nbsp;
			</c:otherwise>
		</c:choose>
	</div>