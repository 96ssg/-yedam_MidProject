<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>courseList.do</title>
</head>
<body>
	<h1>수강정보 상세</h1>
	<table border="1">
		<tr>
			<td>강의번호</td>
			<td>학생번호</td>
			<td>수강연도</td>
			<td>수강학기</td>
			<td>중간고사 성적</td>
			<td>기말고사 성적</td>
			<td>평점</td>
		</tr>
		<tr class="course">
			<td>${course.lectureId }</td>
			<td>${course.studentId }</td>
			<td>${course.courseYear }</td>
			<td>${course.courseSemester }</td>
			<td>${course.courseMid}</td>
			<td>${course.courseFinal }</td>
			<td>${course.courseScore }</td>
		</tr>
	</table>
	
	
</body>
</html>