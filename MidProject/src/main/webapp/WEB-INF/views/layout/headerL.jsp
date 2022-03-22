<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div align="center">
	<div>
		<h1>헤더 부분</h1>
		<ul>
			<li><a href="home.do">home</a></li>
			<li><a href="boardList.do">board</a></li>
			<c:choose>
				<c:when test="${user eq null }">
					<li><a href="loginForm.do">login</a></li>
				</c:when>			
				<c:otherwise>
					<li><a href="logout.do">logout</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
		<hr>
	</div>
</div>