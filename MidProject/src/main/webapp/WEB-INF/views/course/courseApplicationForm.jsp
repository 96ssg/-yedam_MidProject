<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container-md">
<div class="fs-2 px-3 my-3">수강 신청</div>
	<!-- 강의 검색 -->
	<div class="input-group my-4">
			학번 &nbsp;  <input type="text" class="form-control-md" value="${user.studentId }" disabled>&nbsp;&nbsp;&nbsp;
			최대이수학점 &nbsp; <input type="text" class="form-control-md" value="${user.studentScore }" disabled>&nbsp;&nbsp;&nbsp;
			강의번호 &nbsp; <input type="text" class="form-control-md" name="lectureId" id="lectureId" required>
			<input type="button" class="btn btn-outline-secondary" value="신청" id="applyBtn">
	</div>
	
	<!-- 검색한 강의 정보 출력 -->
	<div>
<div class="fs-2 px-3 my-3">강의 검색</div>
		<div class="input-group my-4">
			강의명 &nbsp; <input type="text" class="form-control-md" name="lectureId" id="searchLectureId" required>
			<input type="button" class="btn btn-outline-secondary" value="검색" id="searchLectureBtn">
		</div>
		<div class="mb-3" style="height:30vh;overflow-y:auto;overflow-x:hidden">
		<table class="table">
			<thead>
				<tr>
					<th>강의번호</th>
					<th>강의명</th>
					<th>학점</th>
					<th>교수명</th>
					<th>강의실</th>
					<th>신청인원</th>
					<th>수강정원</th>
				</tr>
			</thead>
			<tbody id="searchResult"></tbody>
		</table>
		</div>
	</div>
	
	<!-- 내 수강 신청 현황 -->
	<div>
		<h2>수강신청 강의 목록</h2>
		<table class="table">
			<thead>
				<tr>
					<th>강의명</th>
					<th>학점</th>
					<th>교수명</th>
					<th>강의실</th>
					<th>수강정원</th>
					<th>신청취소</th>
				</tr>
			</thead>
			<tbody id="applicationInfo"></tbody>
		</table>
	</div>
</div>	
	<script>
		// 최초 페이지 로드 시 현재 수강신청 목록 출력
		window.onload = semesterCourseList;
		
		
		// 수강신청
		function applyCourse() {
			const lectureId = document.getElementById('lectureId').value;
			
			if (lectureId == '') {
				alert('강의번호를 입력하세요.');
				return;
			} 
			
			const maxCredit = ${user.studentScore}
			
			fetch('ajaxCourseInsert.do?', {
				method: 'post',
				headers: {'Content-Type': 'application/x-www-form-urlencoded'},
				body: 'lectureId=' + lectureId
			})
			.then(response => response.text())
			.then(result => {
				// 수강신청 실패
				if (result == 'lectureId') {
					alert('강의 번호를 확인하세요.')
					return;
				}
				if (result == 'capacity') {
					alert('수강정원이 초과되었습니다.')
					return;
				}
				if (result == 'credit') {
					alert('최대이수학점을 초과해서 신청할 수 없습니다.')
					return;
				}
				if (result == 'applied') {
					alert('이미 신청된 강의입니다.');
					return;
				}
				
				// 수강신청 성공
				// 수강신청 후 목록 재호출
				semesterCourseList();
			})
			.catch(error => console.error('error : ', error))
		}
		
		applyBtn.addEventListener('click', () => applyCourse());
		lectureId.addEventListener('keydown', event => {
		if (event.key === 'Enter') applyCourse();
		})
		
		// 수강신청 목록 출력
		function semesterCourseList() {
			
			// 기존 수강신청 목록 삭제
			applicationInfo.innerHTML = '';
			
			fetch('ajaxSemesterCourseList.do')
			.then(response => response.text())
			.then(result => {
				
				// 신청한 강의가 없을 경우
				if (result === 'noResult') {
					
					const td = document.createElement('td');
					td.setAttribute('colspan', '7');
					td.setAttribute('align', 'center');
					td.innerText = '신청한 강의가 없습니다.';
					
					applicationInfo.append(td);
					return;
				}
				
				// 수강신청 강의 목록, 교수명
				const lectureList = JSON.parse(result.split('~')[0]);
				const professorName = JSON.parse(result.split('~')[1]);
				
				// 결과 출력
				for (let i=0; i<lectureList.length; i++) {
					const tr = document.createElement('tr');
					
					const lectureId = document.createElement('input');
					lectureId.setAttribute('type','hidden');
					lectureId.value= lectureList[i].lectureId;
					
					const lectureName = document.createElement('td');
					lectureName.innerText = lectureList[i].lectureName;
					
					const lectureCredit = document.createElement('td');
					lectureCredit.innerText = lectureList[i].lectureCredit;
					
					const profName = document.createElement('td');
					profName.innerText = professorName[i];
					
					const lectureRoom = document.createElement('td');
					lectureRoom.innerText = lectureList[i].lectureRoom;
					
					const lectureCapacity = document.createElement('td');
					lectureCapacity.innerText = lectureList[i].lectureCapacity;
					
					const cancel = document.createElement('td');
					const cancelBtn = document.createElement('input');
					cancelBtn.setAttribute('type', 'button');
					cancelBtn.setAttribute('id', 'cancelBtn');
					cancelBtn.setAttribute('value', '취소하기');
					cancelBtn.addEventListener('click', () => cancelCourse(lectureList[i].lectureId));
					cancel.append(cancelBtn);
					
					tr.append(lectureId);
					tr.append(lectureName);
					tr.append(lectureCredit);
					tr.append(profName);
					tr.append(lectureRoom);
					tr.append(lectureCapacity);
					tr.append(cancel);
					
					applicationInfo.append(tr);
				}
				
			})
		}
		
		
		// 수강신청 취소
		function cancelCourse(lectureId) {
			const isCancel = confirm('강의를 수강취소 하시겠습니까?');
			if (isCancel == false) return;
			
			fetch('ajaxCourseDelete.do?', {
				method: 'post',
				headers: {'Content-Type': 'application/x-www-form-urlencoded'},
				body: 'lectureId=' + lectureId
			})
			.then(response => response.text())
			.then(result => {
				if (result != 'deleted') {
					alert('수강신청 취소 중 오류가 발생했습니다.')
					return;
				}
				
				// 취소 후 수강신청 목록 재호출
				semesterCourseList();
			})
		}
		
		
		// 강의 검색
		function searchLecture() {
			const keyword = document.getElementById('searchLectureId').value
			if (keyword == '') {
				alert('강의명을 입력하세요.');
				return;
			}
			
			fetch('ajaxApplicationSearch.do?', {
				method: 'post',
				headers: {'Content-Type': 'application/x-www-form-urlencoded'},
				body: 'val=' + keyword
			})
			.then(response => response.text())
			.then(result => {
				// 기존 검색결과 삭제
				searchResult.innerHTML = '';
				
				// 검색결과가 없을 경우
				if (result === 'noResult') {
					const td = document.createElement('td');
					td.setAttribute('colspan', '7');
					td.setAttribute('align', 'center');
					td.innerText = '검색결과가 없습니다.';
					
					searchResult.append(td);
					return;
				}

				// 검색 결과 출력
				// 강의정보, 교수명, 현재 수강신청 인원 결과
				
				const lecture = JSON.parse(result.split('~')[0]);
				const professorName = JSON.parse(result.split('~')[1]);
				console.log(typeof professorName)
				const currentApplications = result.split('~')[2];
				
				for(let i=0; i<lecture.length; i++) {
					const tr = document.createElement('tr');
					
					const lectureId = document.createElement('td');
					lectureId.innerText = lecture[i].lectureId;
					
					const lectureName = document.createElement('td');
					lectureName.innerText = lecture[i].lectureName;
					
					const lectureCredit = document.createElement('td');
					lectureCredit.innerText = lecture[i].lectureCredit;
					
					const profName = document.createElement('td');
					profName.innerText = professorName[i];
					
					const lectureRoom = document.createElement('td');
					lectureRoom.innerText = lecture[i].lectureRoom;
					
					const currentNum = document.createElement('td');
					currentNum.innerText = currentApplications;
					
					const lectureCapacity = document.createElement('td');
					lectureCapacity.innerText = lecture[i].lectureCapacity;
					
					tr.append(lectureId);
					tr.append(lectureName);
					tr.append(lectureCredit);
					tr.append(profName);
					tr.append(lectureRoom);
					tr.append(currentNum);
					tr.append(lectureCapacity);
					
					searchResult.append(tr);
				}
			})
		}
		searchLectureBtn.addEventListener('click', () => searchLecture())
		searchLectureId.addEventListener('keydown', event => {
		if (event.key === 'Enter') searchLecture();
		})
	</script>