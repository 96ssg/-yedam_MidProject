<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>courseInsertList.do</title>
</head>
<body>
	<h1 onclick="location.href='professorCourseList.do'">수강정보 목록(클릭)</h1>
	<h1>내 강의 목록</h1>
	<c:if test="${role ne 'student' }">
		<table class="table">
			<thead>
				<tr>
					<th>강의번호</th>
					<th>강의명</th>
					<th>강의요일</th>
					<th>강의실</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${lectureList }" var="l">
					<tr class="lectures">
						<td>${l.lectureId}</td>
						<td>${l.lectureName}</td>
						<td>${l.lectureDay}</td>
						<td>${l.lectureRoom}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>

	<c:if test="${empty lectureList }">
		<h1>없음</h1>
	</c:if>


	<script>
	
		const lectures = document.querySelectorAll('.lectures');
		lectures.forEach((element)=>{
			element.addEventListener('click', () => {
				const lectureId = element.children[0].innerText;
				
				location.href="courseDetail.do?lectureId=" + lectureId;
			})
		})
	</script>

</body>
</html>