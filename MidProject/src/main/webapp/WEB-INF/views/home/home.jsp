<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">

	  <input type="checkbox" class="btn-check" id="myInfoBtn" autocomplete="off" checked>
	  <label class="btn btn-outline-secondary" for="myInfoBtn">내 정보</label>
	
	  <input type="checkbox" class="btn-check" id="timetableBtn" autocomplete="off" checked>
	  <label class="btn btn-outline-secondary" for="timetableBtn">시간표</label>
	
	  <input type="checkbox" class="btn-check" id="boardBtn" autocomplete="off" checked>
	  <label class="btn btn-outline-secondary" for="boardBtn">학과공지</label>
	
	
	<div class="row d-flex justify-content-around pt-3" style="min-height: 70vh" id="viewGroup">

		<div id="myInfo" class="col-auto border m-3" style="width: 40vh; height: 40vh;">
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
		<div id="timetable" class="col-auto border m-3" style="width: 50vh; padding-right: 2vh; max-height: 65vh">
			<div class="h1 m-3 text-center">시간표</div>
	
			<table class="table text-center">
				<colgroup>
					<col width="10%"/>
					<col/>
					<col/>
					<col/>
					<col/>
					<col/>
				</colgroup>
				<thead>
					<tr><th></th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th></tr>
				</thead>
				<tbody>
					<tr><td>1</td><td id="MON1"></td><td id="TUE1"></td><td id="WED1"></td><td id="THR1"></td><td id="FRI1"></td></tr>
					<tr><td>2</td><td id="MON2"></td><td id="TUE2"></td><td id="WED2"></td><td id="THR2"></td><td id="FRI2"></td></tr>
					<tr><td>3</td><td id="MON3"></td><td id="TUE3"></td><td id="WED3"></td><td id="THR3"></td><td id="FRI3"></td></tr>
					<tr><td>4</td><td id="MON4"></td><td id="TUE4"></td><td id="WED4"></td><td id="THR4"></td><td id="FRI4"></td></tr>
					<tr><td>5</td><td id="MON5"></td><td id="TUE5"></td><td id="WED5"></td><td id="THR5"></td><td id="FRI5"></td></tr>
					<tr><td>6</td><td id="MON6"></td><td id="TUE6"></td><td id="WED6"></td><td id="THR6"></td><td id="FRI6"></td></tr>
					<tr><td>7</td><td id="MON7"></td><td id="TUE7"></td><td id="WED7"></td><td id="THR7"></td><td id="FRI7"></td></tr>
					<tr><td>8</td><td id="MON8"></td><td id="TUE8"></td><td id="WED8"></td><td id="THR8"></td><td id="FRI8"></td></tr>
					<tr><td>9</td><td id="MON9"></td><td id="TUE9"></td><td id="WED9"></td><td id="THR9"></td><td id="FRI9"></td></tr>
				</tbody>
			</table>
			<div class="row">
				<div class="col-4 pb-3 fs-5 fw-bold text-center" id="lectureInfo1">-</div>
				<div class="col-8 pb-3 fs-5 fw-bold text-center" id="lectureInfo2">-</div>
			</div>
		</div>

		<!-- 공지사항 -->
		<div class="col-auto border m-3" id="board" style="max-height: 45vh">
			<div class="h1 m-3 text-center">학과공지</div>
			<table class="table table-hover">
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
	
</div>
<script>
	// 홈 화면 정보 출력
	const role = '${role}';
	
	fetch(role + 'Info.do')
	.then(response => response.text())
	.then(result => {
		const homeInfo = result.split('^~');
		const lectureList = JSON.parse(homeInfo[0]);
		const colorList = ['rgb(0, 137, 208)','rgb(204, 0, 76)','rgb(205, 235, 204)','rgb(100, 96, 170)','rgb(252, 183, 17)','rgb(13, 177, 75)'];
		let colorOrder = 0;
		
		lectureList.forEach(element =>{
			const lectureName = element.lectureName;
			const lectureDay = element.lectureDay;
			const lectureStart = element.lectureStart;
			const lectureEnd = element.lectureEnd;
			const lectureRoom = element.lectureRoom;

			for (let i=Number(lectureStart); i< Number(lectureEnd)+1; i++) {
				const td = document.getElementById(lectureDay + i);
				
				const color = colorList[colorOrder];
				td.style.backgroundColor = color;
				td.style.borderBottom = '1px solid ' + color;
				
				td.addEventListener('mouseover', () => {
					lectureInfo1.innerHTML = '강의정보 <br>강의실 ';
					lectureInfo2.innerHTML = lectureName + '<br>' + lectureRoom;
				})
				td.addEventListener('click', () => {
					location.href='lectureView.do?lectureId=' + element.lectureId;
				})
				
			}
			colorOrder++;
		})
		
		const noticeList = JSON.parse(homeInfo[1]);
		noticeList.forEach(element =>{
			let tr = document.createElement('tr');
			
			td = document.createElement('td');
			td.innerText = element.boardTitle;
			tr.append(td);

			td = document.createElement('td');
			td.setAttribute('class','text-center');
			
			let date = element.boardDate.replace(',','').replace('월','').split(' ');
			date[0] = (date[0].length < 2)? '0'+date[0] : date[0];
			date[1] = (date[1].length < 2)? '0'+date[1] : date[1];
			date = date[0]+'-'+date[1]
			
			td.innerText = date;
			tr.append(td);

			notice.append(tr);
			
			tr.addEventListener('click', () => {
				
				location.href="boardDetail.do?boardId=" + element.boardId;
			})
			
		})
	})
	
	document.querySelector('#timetable').addEventListener('mouseleave', () => {
		lectureInfo1.innerHTML = '-';
		lectureInfo2.innerHTML = '-';
	})
	
	
	// 홈 화면 컴포넌트 버튼
	const myInfoDiv = document.querySelector('#myInfo');
	const timetableDiv = document.querySelector('#timetable');
	const boardDiv = document.querySelector('#board');
	
	myInfoBtn.addEventListener('change', function() {
		if (!this.checked) myInfoDiv.remove()
		if (this.checked) viewGroup.append(myInfoDiv)
	})
	timetableBtn.addEventListener('change', function() {
		if (!this.checked) timetableDiv.remove()
		if (this.checked) viewGroup.append(timetableDiv)
	})
	boardBtn.addEventListener('change', function() {
		if (!this.checked) boardDiv.remove()
		if (this.checked) viewGroup.append(boardDiv)
	})
	
	
	
	
</script>