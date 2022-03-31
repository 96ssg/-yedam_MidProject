<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="col-lg-10">
	<h1>성적 입력</h1>
	<ul class="nav nav-tabs">
		<li class="nav-item"><a id="semesterTab" onclick="toggle('semester')" class="nav-link">해당학기</a></li>
		<li class="nav-item"><a id="allTab" onclick="toggle('all')" class="nav-link">전체학기</a></li>
	</ul>
	
	<div id="semesterCourse">
		<h6>최소 점수는 1점입니다. 0점 입력시 성적 미입력 상태로 반영됩니다.</h6>
		<table class="table">
			<tr>
				<td>강의번호</td>
				<td>학생번호</td>
				<td>수강연도</td>
				<td>수강학기</td>
				<td>중간고사 성적</td>
				<td>기말고사 성적</td>
				<td colspan="2">평점</td>
			</tr>
			<c:forEach var="course" items="${semesterCourseList }">
				<tr class="course">
					<td>${course.lectureId }</td>
					<td>${course.studentId }</td>
					<td>${course.courseYear }</td>
					<td>${course.courseSemester }</td>
					<td><input type="number" value="${course.courseMid }" min="0" max="100" disabled></td>
					<td><input type="number" value="${course.courseFinal }" min="0" max="100" disabled></td>
					<td><input type="text" value="${course.courseScore }" disabled></td>
					<td><input type="button" class="updateBtn" value="성적 입력" disabled></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	<div id="allCourse" style="display: none">
		<c:if test="${empty allCourseList }">
			<h3>이전 학기 정보가 없습니다.</h3>
		</c:if>
		<c:if test="${not empty allCourseList }">
			<table class="table">
			<tr>
				<td>강의번호</td>
				<td>학생번호</td>
				<td>수강연도</td>
				<td>수강학기</td>
				<td>중간고사 성적</td>
				<td>기말고사 성적</td>
				<td>평점</td>
			</tr>
			<c:forEach var="course" items="${allCourseList }">
				<tr>
					<td>${course.lectureId }</td>
					<td>${course.studentId }</td>
					<td>${course.courseYear }</td>
					<td>${course.courseSemester }</td>
					<td>${course.courseMid }</td>
					<td>${course.courseFinal }</td>
					<td>${course.courseScore }</td>
				</tr>
			</c:forEach>
		</table>
		</c:if>
	</div>
	<div align="right">
	<input type="button" class="btn btn-outline-secondary" onclick="location.href='courseInsertList.do'" value="목록">
	</div>
</div>
	<script>
		// 탭
		function toggle(tab) {
			if (tab === 'semester') {
				semesterCourse.style.display = '';
				allCourse.style.display = 'none';
			}
			if (tab == 'all') {
				semesterCourse.style.display = 'none';
				allCourse.style.display = '';
			}
		}
	
		// 성적 입력칸 활성화
		const course = document.querySelectorAll('.course');
		course.forEach(element => {
			// 행 클릭 시 버튼 활성화
			element.addEventListener('click', () => {
				element.children[4].children[0].removeAttribute('disabled');
				element.children[5].children[0].removeAttribute('disabled');
				element.children[7].children[0].removeAttribute('disabled');
			})
			
			// 성적 입력 시 평점 계산
			element.children[4].addEventListener('change', element => getScore(element))
			element.children[5].addEventListener('change', element => getScore(element))
			
			// 성적 입력
			element.children[7].children[0].addEventListener('click', () => {
				const lectureId = element.children[0].innerText;
				const studentId = element.children[1].innerText;
				const courseMid = element.children[4].children[0].value;
				const courseFinal = element.children[5].children[0].value;
				const gpa = element.children[6].children[0].value;

				fetch('ajaxCourseUpdate.do?', {
					method: 'post',
					headers: {'Content-Type': 'application/x-www-form-urlencoded'},
					body: 'lectureId=' + lectureId + '&studentId=' + studentId + '&courseMid=' + courseMid + '&courseFinal=' + courseFinal + '&courseScore=' + gpa
				})
				.then(response => response.text())
				.then(result => {
					// 성적 입력 후 입력창 비활성화
					if (result === 'updated') {
						element.children[4].children[0].setAttribute('disabled', '');
						element.children[5].children[0].setAttribute('disabled', '');
						element.children[7].children[0].setAttribute('disabled', '');
					} else {
						alert('성적 입력 중 오류가 발생했습니다.');
					}
					
				})
			})
		})
		
		// 평점 계산
		function getScore(selected) {
			const selectedRow = selected.currentTarget.parentNode;
			const midScore = selectedRow.children[4].children[0].value;
			const finalScore = selectedRow.children[5].children[0].value;
			const gpa = midScore/2 + finalScore/2;
			
			// 음수 입력시 오류
			if (midScore < 0 || finalScore < 0) {
				alert('잘못 입력하셨습니다.');
				
				// 값 초기화
				if (midScore < 0) selectedRow.children[4].children[0].value = 0;
				if (finalScore < 0) selectedRow.children[5].children[0].value = 0;
				selectedRow.children[6].children[0].value = '-';
				
				return;
			}
			
			// 각 점수의 평균에 따라 성적 입력
			if (midScore == 0 || finalScore == 0) {selectedRow.children[6].children[0].value = '-'; return;}
			if (gpa >= 95) {selectedRow.children[6].children[0].value = 'A+'; return;}
			if (gpa >= 90) {selectedRow.children[6].children[0].value = 'A'; return;}
			if (gpa >= 85) {selectedRow.children[6].children[0].value = 'B+'; return;}
			if (gpa >= 80) {selectedRow.children[6].children[0].value = 'B'; return;}
			if (gpa >= 75) {selectedRow.children[6].children[0].value = 'C+'; return;}
			if (gpa >= 70) {selectedRow.children[6].children[0].value = 'C'; return;}
			if (gpa >= 65) {selectedRow.children[6].children[0].value = 'D+'; return;}
			if (gpa >= 60) {selectedRow.children[6].children[0].value = 'D'; return;}
			if (gpa < 60) selectedRow.children[6].children[0].value = 'F';
		}
	</script>