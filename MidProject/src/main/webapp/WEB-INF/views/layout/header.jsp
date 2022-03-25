<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
			<li></li>
			<li><a href="boardList.do">board</a></li>
			<li><a href="courseList.do">course</a></li>
			<li><a href="lectureList.do">lecture</a></li>
			<li><a href="studentList.do">student</a></li>
			<li><a href="professorList.do">professor</a></li>
			<li><a href="checkPassword.do">myPage</a></li>
			<li></li>
			<li><a href="logout.do">logout</a></li>
		</ul>
		<hr>
	</div>
</div>
</body>
</html>
