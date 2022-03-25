<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery.min.js"></script>
</head>
<body>
	<div align="center">
		<div>
			<h1>${role }</h1>
		</div>
		<div>
			<form id="frm" method="post" onsubmit="return false">
				<div>
					<select id="searchKey" name="searchKey">
						<option value="전체">전체</option>
						<option value="강의번호">강의번호</option>
						<option value="교수번호">교수번호</option>
						<option value="강의명">강의명</option>

					</select> <span> <input type="text" id="searchVal" name="searchVal" onkeyup="enterkey();">&nbsp;&nbsp;
						<input type="button" id="searchBtn" value="검색">
					</span>
				</div>

				<br />
				<div>
					<table border="1" id="contents">
						<thead>
							<tr>
								<th width="100">강의번호</th>
								<th width="200">강의명</th>
								<th width="50">학점</th>
								<th width="70">강의요일</th>
								<th width="60">시작교시</th>
								<th width="60">끝교시</th>
								<th width="300">강의실</th>
								<th width="100">교수번호</th>
								<th width="100">최대인원</th>
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
								<c:forEach items="${lectures }" var="l">
									<tr onmouseover='this.style.background="#fcecae";'
										onmouseleave='this.style.background="#FFFFFF";'
										onclick='lectureContents(${l.lectureId},"${l.professorId }")'>
										<td>${l.lectureId }</td>
										<td>${l.lectureName}</td>
										<td>${l.lectureCredit}</td>
										<td>${l.lectureDay}</td>
										<td>${l.lectureStart}</td>
										<td>${l.lectureEnd}</td>
										<td>${l.lectureRoom}</td>
										<td class="profId">${l.professorId}</td>
										<td>${l.lectureCapacity}</td>
										<td align="center" onclick="preventDefault()"><c:if test="${role eq 'admin' }">
												<button type="submit" formaction="lectureDelete.do">삭제</button>
											</c:if></td>
									</tr>
								</c:forEach>
							</c:if>
						</tbody>
					</table>
				</div>
				<br />
				<div>
					<c:if test="${sessionScope.role eq 'admin' }">
						<button type="button"
							onclick="location.href='lectureInsertForm.do'">강의등록</button>
					</c:if>
				</div>
				<input type="hidden" id="lectureId" name="lectureId"> <input
					type="hidden" id="professorId" name="professorId">
			</form>
		</div>
	</div>
	<script type="text/javascript">
	
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
	
function lectureContents(n,m){
	console.log(n)
	console.log(typeof m)
	console.log(m)
	frm.lectureId.value = n;
	frm.professorId.value = m;
	frm.action = "lectureView.do";
	frm.submit();
}
function searchList(){
	$.ajax({
		url : "ajaxLectureSearch.do",
		type : "post",
		data : {"key" : $("#searchKey").val(),"val": $("#searchVal").val() },
		dataType : "json",
		success : function(result){
			if(result.length > 0){
				// html 로 변환코드
				searchResult(result);  // json data 를 html로 변환해서 뿌려주는 메소드
				profNames();
			}else{
				alert("검색한 결과가 존재하지 않아요!");
			}
		}
	})
}
function searchResult(data){
	var tb = $("#lectureBody");
	$("#lectureBody").empty();
	
	$.each(data, function(index, item){
		var html = $("<tr />").attr({
			'onmouseover' : 'this.style.background="#fcecae";',
			'onmouseleave' : 'this.style.background="#FFFFFF";',
			'onclick' : 'lectureContents('+item.lectureId+', "'+item.professorId+'")'
		}).append(
				$("<td />").text(item.lectureId),
				$("<td />").text(item.lectureName),
				$("<td />").text(item.lectureCredit),
				$("<td />").text(item.lectureDay),
				$("<td />").text(item.lectureStart),
				$("<td />").text(item.lectureEnd),
				$("<td />").text(item.lectureRoom),
				$("<td />").text(item.professorId),
				$("<td />").text(item.lectureCapacity)
				);
		tb.append(html)
	});
	
	$("#contents").append(tb);
	
}
searchBtn.addEventListener('click', searchList);
function enterkey(){
	if(window.event.keyCode == 13){
		searchList();
	}
}




</script>

</body>
</html>