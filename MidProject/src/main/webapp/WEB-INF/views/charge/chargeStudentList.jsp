<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-lg-10">
	<h1>지도학생 목록</h1>
	<form id="frm" method="post">
	<table class="table">
		<tr>
			<th>학생번호</th>
			<th>이름</th>
			<th>학년</th>
			<th>학기</th>
			<th>비고</th>
		</tr>
		<c:forEach var="student" items="${studentList }">
			<tr onclick="student">
				<td>${student.studentId }</td>
				<td>${student.studentName }</td>
				<td>${student.studentGrade }</td>
				<td>${student.studentSemester }</td>
				<td><button type="button" onclick="runcourse(${student.studentId})">성적조회</button></td>
			</tr>
		</c:forEach>
	</table>
	<input type="hidden" id="studentId" name="studentId">
	</form>
	</div>
	<script>
	function runcourse(n){
		frm.studentId.value = n;
		frm.action = "studentCourseList.do";
		frm.submit();
	}
		/* const students = document.querySelectorAll('#student');
		students.forEach( student => {
			student.addEventListener('click', () => {
				const studentId = event.target.parentNode.children[0].innerText;
				location.href = "studentCourseList.do?studentId=" + studentId
		})}); */
	</script>