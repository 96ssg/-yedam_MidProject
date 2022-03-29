<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>성적 조회</h1>
<h3 id="total">전체성적</h3>
<h3 id="semester">학기성적</h3>
<div id="totalGrade">
	<c:if test="${empty courseList}">
		<h5>수강 정보가 없습니다.</h5>
	</c:if>

	<c:if test="${not empty courseList }">
				전체
				<table class="table">
			<tr>
				<td>수강연도</td>
				<td>수강학기</td>
				<td>강의명</td>
				<td>중간고사 성적</td>
				<td>기말고사 성적</td>
				<td>평점</td>
			</tr>
			<c:forEach var="course" items="${courseList }">
				<tr class="course">
					<td>${course.courseYear }</td>
					<td>${course.courseSemester }</td>
					<td class="lectureName">${course.lectureId }</td>
					<td>${course.courseMid}</td>
					<td>${course.courseFinal }</td>
					<td>${course.courseScore }</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</div>

<div id="semesterGrade" style="display: none">
	<c:if test="${empty semesterCourseList}">
		<h5>수강 정보가 없습니다.</h5>
	</c:if>
	학기
	<c:if test="${not empty semesterCourseList }">
		<table class="table">
			<tr>
				<td>수강연도</td>
				<td>수강학기</td>
				<td>강의명</td>
				<td>중간고사 성적</td>
				<td>기말고사 성적</td>
				<td>평점</td>
			</tr>
			<c:forEach var="course" items="${semesterCourseList }">
				<tr class="course">
					<td>${course.courseYear }</td>
					<td>${course.courseSemester }</td>
					<td class="lectureName">${course.lectureId }</td>
					<td>${course.courseMid}</td>
					<td>${course.courseFinal }</td>
					<td>${course.courseScore }</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</div>

<c:if test="${role ne 'student' }">
	<input type="button" onclick="location.href='chargeStudentList.do'"
		value="목록">
</c:if>

<script>
// 		강의번호 => 강의명
		const lectureList = ${lectures};
		const lectureName = document.querySelectorAll('.lectureName');
		
		for (let i=0; i<lectureName.length;i++) {
			lectureList.forEach(l => {
				if(lectureName[i].innerText == l.lectureId) lectureName[i].innerText = l.lectureName;
			})
		}
		
// 		전체성적, 학기성적 탭
		total.addEventListener('click', () => {
			totalGrade.style = 'display: block';
			semesterGrade.style = 'display: none';
		})
		semester.addEventListener('click', () => {
			totalGrade.style = 'display: none';
			semesterGrade.style = 'display: block';
		})
			
	</script>
