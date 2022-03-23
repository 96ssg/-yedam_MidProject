<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div align="center">
	<div>
		<h1>헤더 부분</h1>
		<ul>
			<c:choose>
				<c:when test='${role eq "student" }'>
					<li><a href="studentHome.do">student home</a></li>
				</c:when>			
				<c:otherwise>
					<li><a href="professorHome.do">professor home</a></li>
				</c:otherwise>
			</c:choose>
			<li><a href="boardList.do">board</a></li>
			<li><a href="courseList.do">course</a></li>
			<li><a href="logout.do">logout</a></li>
		</ul>
		<hr>
	</div>
</div>
