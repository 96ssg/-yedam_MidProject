<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="js/jquery.min.js"></script>
<div class="container-md">
	<div class="fs-2 px-3 my-3">강의 목록</div>
	<div>
		<!-- Search Bar Start -->
		<div class="row">
			<div class="col-9 input-group my-4">
				<select style="width: 10%" class="form-select-sm" id="searchKey"
					name="searchKey">
					<option value="전체">전체</option>
					<option value="강의번호">강의번호</option>
					<option value="교수번호">교수번호</option>
					<option value="강의명">강의명</option>
				</select> <input type="text" class="form-control" id="searchVal"
					name="searchVal" onkeyup="enterkey()" placeholder="Search"
					aria-label="Search">
				<button class="btn btn-outline-secondary" id="searchBtn"
					type="button">Search</button>
			</div>
			<div class="col-3">
				<button class="btn btn-outline-secondary" id="deptLectureBtn"
					type="button">학과 강의 목록</button>
			</div>
			<!-- Search Bar End -->
		</div>

		<!-- LectureList Start -->
		<form id="frm" method="post" onsubmit="return false">
			<br />
			<div>
				<table class="table table-hover" id="contents">
					<thead>
						<tr align="center">
							<th width="100">강의번호</th>
							<th width="200">강의명</th>
							<th width="50">학점</th>
							<th width="100">교수명</th>
							<th width="100">비고</th>
						</tr>
					</thead>
					<tbody id="lectureBody">
						<c:if test="${empty lectures }">
							<tr>
								<td colspan="5">게시글이 존재하지 않아요</td>
							</tr>
						</c:if>
						<c:if test="${not empty lectures }">
							<c:forEach items="${lectures }" var="l" varStatus="status">
								<tr align="center"
									onclick='lectureContents(${l.lectureId},"${l.professorId }")'>
									<td>${l.lectureId }</td>
									<td>${l.lectureName}</td>
									<td>${l.lectureCredit}</td>
									<td class="profId">${l.professorId}</td>
									<td onclick="event.stopPropagation()"></td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
			</div>
			<br />





<!-- 			 			<nav> -->
<!-- 						  <ul class="pagination justify-content-center"> -->
<!-- 						    <li class="page-item" id="prevBtn" onclick="onPrevBtn()"> -->
<!-- 						      <a class="page-link" aria-label="Previous"> -->
<!-- 						        <span aria-hidden="true">&laquo;</span> -->
<!-- 						      </a> -->
<!-- 						    </li> -->

<!-- 						    <li class="page-item" id="nextBtn" onclick="onNextBtn()"> -->
<!-- 						      <a class="page-link" aria-label="Next"> -->
<!-- 						        <span aria-hidden="true">&raquo;</span> -->
<!-- 						      </a> -->
<!-- 						    </li> -->
<!-- 						  </ul> -->
<!-- 						</nav> -->







			<div align="right">
				<c:if test="${role eq 'admin' }">
					<button type="button" class="btn btn-outline-secondary mb-5"
						onclick="location.href='lectureInsertForm.do'">강의등록</button>
				</c:if>
			</div>
			<input type="hidden" id="lectureId" name="lectureId"> <input
				type="hidden" id="professorId" name="professorId">
		</form>
	</div>
</div>
<!-- LectureList End -->
<script type="text/javascript">

	// 강의 등록 후 새로고침 시 글쓰기 중복 수행 방지를 위한 url 변경
	history.pushState(null, null, 'lectureList.do');


	/* 각 항목에 해당하는 교수명 출력 */
	window.onload = profNames;

	function profNames() {
		const pList = ${professors};
		const pId = document.querySelectorAll('.profId');
		
		for (let i=0; i<pId.length; i++) {
			pList.forEach(function(prof) {
				if (prof.profId === pId[i].innerText) {
					pId[i].innerText = prof.profName;
				} 
			})
		}
	}
	/* 강의 상세정보 페이지 호출 */
	function lectureContents(n,m){
	frm.lectureId.value = n;
	frm.professorId.value = m;
	frm.action = "lectureView.do";
	frm.submit();
	}
	/* 리스트 검색 기능 */
	function searchList(){
	$.ajax({
		url : "ajaxLectureSearch.do",
		type : "post",
		data : {"key" : $("#searchKey").val(),"val": $("#searchVal").val() },
		dataType : "json",
		success : function(result){
			if(result.length > 0){
				searchResult(result);  // json data => html
				profNames();
			}else{
				alert("검색한 결과가 존재하지 않아요!");
			}
		}
		})
	}
	
	/* 리스트 검색 결과 출력 */
	function searchResult(data){
	var tb = $("#lectureBody");
	$("#lectureBody").empty();
	
	$.each(data, function(index, item){
		var html = $("<tr align='center'></td>").attr({
			'onclick' : 'lectureContents('+item.lectureId+', "'+item.professorId+'")'
		}).append(
				$("<td class='lId'></td>").text(item.lectureId),
				$("<td/>").text(item.lectureName),
				$("<td/>").text(item.lectureCredit),
				$("<td class='profId'></td>").text(item.professorId),
				$("<td onclick='event.stopPropagation()' class='delBtnTd'></td>")
		);
		tb.append(html)
	});
	
	$("#contents").append(tb);
	
	}
	
	searchBtn.addEventListener('click', searchList);
	
	// 소속 학과 강의 출력 버튼
	const deptLecture = ${deptLecture}
	deptLectureBtn.addEventListener('click', printDeptLecture)
	
	function printDeptLecture() {
		searchResult(deptLecture);
		profNames();
		
		const delBtnTd = document.querySelectorAll('.delBtnTd');
		const lId = document.querySelectorAll('.lId');
		for (let i=0; i< delBtnTd.length; i++) {
			const delBtn = document.createElement('input');
			delBtn.setAttribute('type','button');
			delBtn.setAttribute('id','delBtn');
			delBtn.setAttribute('value','삭제');
			delBtn.setAttribute('class','btn btn-outline-secondary');
			delBtn.addEventListener('click', () => deleteLectures(lId[i].innerText));
			delBtnTd[i].append(delBtn);

		}
	}
	
	/* 리스트 검색기능 Enter로 호출 */
	function enterkey(){
	if(window.event.keyCode == 13){
		searchList();
	}
}
	function deleteLectures(lectureId) {
		const isDel = confirm('강의를 삭제 하시겠습니까?');
		if (isDel == false) return;
		console.log(lectureId)
		fetch('ajaxLectureDelete.do?', {
			method: 'post',
			headers: {'Content-Type': 'application/x-www-form-urlencoded'},
			body: 'lectureId=' + lectureId
		})
		.then(response => response.text())
		.then(result => {
			//lectureBody.innerHTML = '';
			if (result != 'deleted') {
				alert('진행중인 강의는 삭제할 수 없습니다.')
				return;
			}
			// 취소 후 강의리스트 목록 재호출
			alert('삭제되었습니다.');
			
			location.href='lectureList.do';
		})
	}
	
	
	
	
// 	// 페이지 버튼 그룹핑을 위한 태그
// 	const pageButton = document.createElement('pagebutton');
// 	pageButton.setAttribute('id', 'pagebutton')
// 	prevBtn.after(pageButton);
	
// 	let pageGroup = document.createElement('pageGroup');
// 	pageGroup.setAttribute('id','pageGroup-1');
// 	pageGroup.setAttribute('style','');
// 	pageButton.append(pageGroup);
	
// 	function pagination(lectureList) {
// 		let pageNum = 1;	// 페이지 번호
// 		let count = 0;		// 한 화면에 표시할 페이지 갯수
// 		let group = 1;		// 페이지의 10단위 숫자
// 		paintPageBtn(pageNum, group);
		
// 		for (let lecture of lectureList) {
// 			const tr = document.createElement('tr');
// 			tr.setAttribute('class','lecture pages page-'+ pageNum);
// 			tr.setAttribute('style', '');
// 			count++;
			
// 			// 딱 맞게 끝나면 새 페이지 생성 안함 && 한 페이지에 count만큼 표시
// 			if (!(pageNum * Number(pagesPerView.value) == lectureList.length)) {
// 				if (count == Number(pagesPerView.value)) {
// 					pageNum++;
// 					paintPageBtn(pageNum, group);
// 					count = 0;
					
// 					// 페이지 번호가 10의 배수면 새 페이지 그룹 생성
// 					if (parseInt(pageNum/10) === group) {
// 						group++;
						
// 						const newPageGroup = document.createElement('pageGroup');
// 						newPageGroup.setAttribute('id','pageGroup-'+group);
// 						newPageGroup.setAttribute('style','display: none');
						
// 						// 이전 페이지 그룹 뒤에 추가
// 						document.getElementById('pageGroup-'+(group-1)).after(newPageGroup);
// 					}
// 				}
// 			}
			
// 			const lectureId = document.createElement('td');
// 			lectureId.setAttribute('class', 'text-center');
// 			lectureId.innerText = lecture.lectureId;

// 			const lectureName = document.createElement('td');
// 			lectureTitle.innerText = lecture.lectureName;
			
			
// 			tr.appendChild(lectureId);
// 			tr.appendChild(lectureName);
// 			resultList.appendChild(tr);
// 		}
		
// 		const lastPageGroup = pagebutton.lastChild;
// 		if (lastPageGroup.innerHTML == '') lastPageGroup.remove();
		
// 		lectureView();
// 		document.querySelector('#page-1').click();
// 	}
	
// 	// 페이지 버튼 생성
// 	function paintPageBtn(pageNum, group) {
// 		const li = document.createElement('li');
// 		li.setAttribute('class', 'page-item mx-1');
// 		li.setAttribute('style', 'display: inline-block');
// 		li.setAttribute('id','page-'+pageNum);
		
// 		li.addEventListener('click', () => selectPage('page-'+pageNum))
		
// 		const a = document.createElement('a'); 
// 		a.setAttribute('class', 'page-link');
// 		a.innerText = pageNum;
		
// 		li.append(a);
		
// 		// 해당하는 페이지 그룹에 추가
// 		const id = 'pageGroup-'+group;
// 		document.getElementById(id).append(li);
// 	}
	
// 	// 클릭한 페이지 표시
// 	function selectPage(pageNum) {
// 		const pages = document.querySelectorAll('.pages');
// 		pages.forEach(page => page.style = 'display: none')
		
// 		const selected = document.getElementsByClassName(pageNum);
// 		for (let page of selected) {
// 			page.style = '';
// 		}
// 	}
	
// 	// 이전 10개 페이지
// 	function onPrevBtn() {
// 		const currentPageGroup = document.querySelector('pageGroup[style=""]');
// 		if (currentPageGroup.id != pageButton.firstChild.id) {
// 			currentPageGroup.style = 'display: none';
// 			currentPageGroup.previousSibling.style = '';
// 			currentPageGroup.previousSibling.firstChild.click();
// 		}
// 	}
	
// 	// 다음 10개 페이지
// 	function onNextBtn() {
// 		const currentPageGroup = document.querySelector('pageGroup[style=""]');
// 		if (currentPageGroup.id != pageButton.lastChild.id) {
// 			currentPageGroup.style = 'display: none';
// 			currentPageGroup.nextSibling.style = '';
// 			currentPageGroup.nextSibling.firstChild.click();
// 		}
// 	}
	
</script>