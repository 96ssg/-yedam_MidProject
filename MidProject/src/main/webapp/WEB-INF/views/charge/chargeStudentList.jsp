<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-lg-8" style="height: 70vh">
	<h1>지도학생 목록</h1>
	<form id="frm" method="post">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>학생번호</th>
					<th>이름</th>
					<th>학년</th>
					<th>학기</th>
					<th>비고</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="student" items="${studentList }">
					<tr onclick="runview(${student.studentId})">
						<td>${student.studentId }</td>
						<td>${student.studentName }</td>
						<td>${student.studentGrade }</td>
						<td>${student.studentSemester }</td>
						<td onclick="event.stopPropagation()"><button type="button" class="btn btn-outline-secondary" onclick="runcourse(${student.studentId})">성적조회</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<input type="hidden" id="studentId" name="studentId">
	</form>
	</div>
	<script>
	function runview(m){
		frm.studentId.value = m;
		frm.action = "studentView.do";
		frm.submit();
	}
	function runcourse(n){
		frm.studentId.value = n;
		frm.action = "studentCourseList.do";
		frm.submit();
	}
	</script>