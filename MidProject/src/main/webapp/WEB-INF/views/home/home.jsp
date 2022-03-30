<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
	<div class="row d-flex justify-content-around pt-3" style="min-height: 70vh">
		<div id="myInfo" class="col-lg-4 border m-3" style="width: 40vh; height: 40vh;">
			<div class="p-5">
				<c:if test="${role eq 'student' }">
					<div class="h1 pb-4 border-bottom border-secondary">${user.studentName } 님</div>
				</c:if>
				<c:if test="${role ne 'student' }">
					<div class="fs-1 pb-4 border-bottom border-secondary">${user.profName } 님</div>
				</c:if>
				
				<div class="row h5 mt-4">
					<div class="col-5 mb-4">소속</div><div class="col-7">${dept.deptName }</div>
					
					<c:if test="${role eq 'student' }">
						<div class="col-5 mb-4">학적상태</div>
						<c:if test="${user.studentStatus eq 1}">
							<div class="col-7">재학</div>
						</c:if>
						<c:if test="${user.studentStatus eq 2}">
							<div class="col-7">제적</div>
						</c:if>
						<c:if test="${user.studentStatus eq 3}">
							<div class="col-7">퇴학</div>
						</c:if>
						<c:if test="${user.studentStatus eq 4}">
							<div class="col-7">휴학</div>
						</c:if>
						
						<div class="col-5 mb-4">학년</div><div class="col-7">${user.studentGrade }학년</div>
						<div class="col-5 mb-4">학기</div><div class="col-7">${user.studentSemester }학기</div>
					</c:if>
					
					<c:if test="${role eq 'admin' }">
						<div class="col-5 mb-4">직책</div><div class="col-7">학과장</div>
					</c:if>
					
					<c:if test="${role eq 'professor' }">
						<div class="col-5 mb-4">직책</div><div class="col-7">교수</div>
					</c:if>
				</div>
			</div>
		</div>
	
		<!-- 시간표 -->
		<div id="timetable" class="col-lg-5 border m-3" style="width: 50vh; height: 50vh;">
			<div class="fs-3 m-3 text-center">강의 목록</div>
			<div class="row text-center">
				<div class="col-1"></div>
				<div class="col border-bottom">월</div>
				<div class="col border-bottom">화</div>
				<div class="col border-bottom">수</div>
				<div class="col border-bottom">목</div>
				<div class="col border-bottom">금</div>
			</div>
			<div class="row">
				<div class="col-1">1</div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
			</div>
			<div class="row">
				<div class="col-1">2</div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
			</div>
			<div class="row">
				<div class="col-1">3</div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
			</div>
			<div class="row">
				<div class="col-1">4</div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
			</div>
			<div class="row">
				<div class="col-1">5</div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
			</div>
			<div class="row">
				<div class="col-1">6</div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
			</div>
			<div class="row">
				<div class="col-1">7</div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
			</div>
			<div class="row">
				<div class="col-1">8</div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
			</div>
			<div class="row">
				<div class="col-1">9</div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
				<div class="col border-bottom"></div>
			</div>
		</div>
			
<!-- 		<table class="table"> -->
<!-- 			<thead> -->
<!-- 				<tr align="center"> -->
<!-- 					<th width="10%">시간</th> -->
<!-- 					<th>월</th> -->
<!-- 					<th>화</th> -->
<!-- 					<th>수</th> -->
<!-- 					<th>목</th> -->
<!-- 					<th>금</th> -->
<!-- 				</tr> -->
<!-- 			</thead> -->
<!-- 			<tbody> -->
<!-- 				<tr id="MON"></tr> -->
<!-- 				<tr id="TUE"></tr> -->
<!-- 				<tr id="WED"></tr> -->
<!-- 				<tr id="THR"></tr> -->
<!-- 				<tr id="FRI"></tr> -->
<!-- 			</tbody> -->
<!-- 		</table> -->
	</div>

	<!-- 공지사항 -->
	<div class="col-md-5 border">
		<div>학과공지</div>
		<table class="table">
			<thead>
				<tr align="center">
					<th width="80%">제목</th>
					<th>작성일</th>
				</tr>
			</thead>
			<tbody id="notice">
			</tbody>
		</table>
	</div>
</div>
<script>
	const role = '<c:out value="${role}"/>';
	fetch(role + 'Info.do')
	.then(response => response.text())
	.then(result => {
		const homeInfo = result.split('~');
		
		const lectureList = JSON.parse(homeInfo[0]);
		lectureList.forEach(element =>{
			let hr = document.createElement('hr');
			let p = document.createElement('p');
			p.innerText = element.lectureName;
// 			timetable.append(p);
			
			p = document.createElement('p');
			p.innerText = element.lectureRoom;
// 			timetable.append(p);
// 			timetable.append(hr);				
			
		})
		
		const noticeList = JSON.parse(homeInfo[1]);
		noticeList.forEach(element =>{
			let tr = document.createElement('tr');
			let td = document.createElement('td');
			td.innerText = element.boardId;
			tr.append(td);
			
			td = document.createElement('td');
			td.innerText = element.boardTitle;
			tr.append(td);

			td = document.createElement('td');
			td.innerText = element.boardDate;
			tr.append(td);

			td = document.createElement('td');
			td.innerText = element.boardWriter;
			tr.append(td);
// 			notice.append(tr);
		})
	})
</script>
