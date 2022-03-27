<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>courseList.do</title>
</head>
<body>
	<h1>성적 조회</h1>
	<h3 id="total">전체성적</h3>
	<h3 id="semester">학기성적</h3>
	<div id="totalGrade">
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
	</div>

	<div id="semesterGrade" style="display: none">
		학기
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
	</div>

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

</body>
</html>