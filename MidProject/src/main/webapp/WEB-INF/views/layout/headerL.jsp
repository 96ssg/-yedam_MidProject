<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home.do</title>


</head>
<body>
<div align="center">
	<div>
		<ul>
			<c:choose>
				<c:when test='${role eq "student" }'>
					<li><a href="home.do">student home</a></li>
					<li><a href="studentCourseList.do">성적</a></li>
					<li><a href="courseApplicationForm.do">수강신청</a></li>
				</c:when>			
				<c:otherwise>
					<li><a href="home.do">professor home</a></li>
					<li><a href="courseInsertList.do">성적</a></li>
				</c:otherwise>
			</c:choose>
			<li></li>
			<li><a href="boardList.do">학과게시판</a></li>
			<li><a href="logout.do">로그아웃</a></li>
		</ul>
		<hr>
	</div>
</div>

</body>
</html>