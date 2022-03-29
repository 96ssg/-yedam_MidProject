<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>담당 지도학생 목록</title>
</head>
<body>
	<h1 onclick="location.href='courseInsertList.do'">내 강의 목록</h1>
	<h1>지도학생 목록</h1>
	<table class="table">
		<tr>
			<th>학생번호</th>
			<th>이름</th>
			<th>학년</th>
			<th>학기</th>
		</tr>
		<c:forEach var="student" items="${studentList }">
			<tr class="student">
				<td>${student.studentId }</td>
				<td>${student.studentName }</td>
				<td>${student.studentGrade }</td>
				<td>${student.studentSemester }</td>
			</tr>
		</c:forEach>
	</table>
	
	<script>
		const students = document.querySelectorAll('.student');
		students.forEach( student => {
			student.addEventListener('click', () => {
				const studentId = event.target.parentNode.children[0].innerText;
				location.href = "studentCourseList.do?studentId=" + studentId
		})});
	</script>
</body>
</html>