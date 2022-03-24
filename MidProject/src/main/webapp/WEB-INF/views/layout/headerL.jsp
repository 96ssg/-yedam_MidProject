<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div align="center">
	<div>
		<ul>
			<c:choose>
				<c:when test='${role eq "student" }'>
					<li><a href="home.do">student home</a></li>
				</c:when>			
				<c:otherwise>
					<li><a href="home.do">professor home</a></li>
				</c:otherwise>
			</c:choose>
			<li><a href="boardList.do">board</a></li>
			<li><a href="courseList.do">course</a></li>
			<li><a href="logout.do">logout</a></li>
		</ul>
		<hr>
	</div>
</div>
