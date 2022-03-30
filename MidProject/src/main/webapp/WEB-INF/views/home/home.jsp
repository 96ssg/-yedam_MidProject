<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home.do</title>
</head>
<body>
	<div align="center" class="row">
		<div class="col-md-12">
			<h1>${role }홈</h1>
			<table border="1">
				<thead>
					<tr>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
					</tr>
				</thead>
				<tbody>
					<tr id="MON"></tr>
					<tr id="TUE"></tr>
					<tr id="WED"></tr>
					<tr id="THR"></tr>
					<tr id="FRI"></tr>
				</tbody>
			</table>
		</div>

		<!-- 시간표 -->
		<div id="timetable" class="col-md-6">
			<h2>강의 목록</h2>
		</div>

		<!-- 공지사항 -->
		<div class="col-md-6">
			<h2>학과공지</h2>
			<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성일</th>
						<th>작성자</th>
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
				timetable.append(p);
				
				p = document.createElement('p');
				p.innerText = element.lectureRoom;
				timetable.append(p);
				timetable.append(hr);				
				
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
				notice.append(tr);
			})
		})
	</script>
</body>
</html>