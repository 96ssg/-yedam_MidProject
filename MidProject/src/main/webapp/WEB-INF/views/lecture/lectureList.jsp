<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="js/jquery.min.js"></script>
<div class="container-md">
	<div class="fs-2 px-3 my-3">강의 목록</div>
	<div>
		<!-- Search Bar Start -->
		<div class="input-group my-4">
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
		<!-- Search Bar End -->
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
							<tr>
									<td align="center"colspan="5">내 학과 강의목록</td>
							</tr>
							<c:forEach items="${lectures }" var="l" varStatus="status">
								<tr align="center"
									onclick='lectureContents(${l.lectureId},"${l.professorId }")'>
									<td>${l.lectureId }</td>
									<td>${l.lectureName}</td>
									<td>${l.lectureCredit}</td>
									<td class="profId">${l.professorId}</td>
									<td onclick="event.stopPropagation()"><c:if
											test="${role eq 'admin' }">
											<button type="button" class="btn btn-outline-secondary"
												onclick="deleteLectures(${l.lectureId})">삭제</button>
										</c:if></td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
			</div>
			<br />
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
				$("<td/>").text(item.lectureId),
				$("<td/>").text(item.lectureName),
				$("<td/>").text(item.lectureCredit),
				$("<td class='profId'></td>").text(item.professorId),
				$("<td/>")
		);
		tb.append(html)
	});
	
	$("#contents").append(tb);
	
	}
	searchBtn.addEventListener('click', searchList);
	/* 리스트 검색기능 Enter로 호출 */
	function enterkey(){
	if(window.event.keyCode == 13){
		searchList();
	}
}
	function deleteLectures(lectureId) {
		const isDel = confirm('강의를 삭제 하시겠습니까?');
		if (isDel == false) return;
		
		fetch('ajaxLectureDelete.do?', {
			method: 'post',
			headers: {'Content-Type': 'application/x-www-form-urlencoded'},
			body: 'lectureId=' + lectureId
		})
		.then(response => response.text())
		.then(result => {
			if (result != 'deleted') {
				alert('진행중인 강의는 삭제할 수 없습니다.')
				return;
			}
			
			// 취소 후 강의리스트 목록 재호출
			alert('삭제되었습니다.');
			document.location.reload();
		})
	}
</script>