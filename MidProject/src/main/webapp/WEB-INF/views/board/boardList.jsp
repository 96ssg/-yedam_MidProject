<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container-md">
		<div class="fs-2 px-3 my-3">공지사항</div>
		<hr>
		<div>
			<div class="input-group my-4">
				<select style="width: 10%"name="key" id="key" onchange="resetSearch()">
					<option value="1">전체</option>
					<option value="2">제목</option>
					<option value="3">내용</option>
				</select> <input type="text" class="form-control" name="val" id="val" placeholder="검색할 단어를 입력하세요">
				<button class="btn btn-outline-secondary" id="searchBtn">검색하기</button>
			</div>
		</div>

		<div>
			<table class="table table-hover">
				<thead>
					<tr class="text-center">
						<th>번호</th>
						<th>제목</th>
						<th>작성일</th>
					</tr>
				</thead>
				<tbody id="resultList">
					<c:forEach items="${boardList }" var="b">
						<tr class="board">
							<td class="text-center">${b.boardId }</td>
							<td>${b.boardTitle }</td>
							<td class="text-center">${b.boardDate }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

		<c:if test="${role eq 'admin' }">
			<div align="right">
				<input type="button" value="글쓰기"
					onclick='location.href="boardInsertForm.do"'>
			</div>
		</c:if>
	</div>

	<script>
		// 글쓰기 후 새로고침 시 글쓰기 중복 수행 방지를 위한 url 변경
		history.pushState(null, null, 'boardList.do');
		
		// 클릭한 행에 대한 공지사항의 상세 페이지로 이동
		function boardDetail() {
			const boards = document.querySelectorAll('.board');
			boards.forEach((element)=>{
				element.addEventListener('click', () => {
					const boardId = element.children[0].innerText;
					
					location.href="boardDetail.do?boardId=" + boardId;
				})
			})
		}
		boardDetail();
		
		// 검색값 초기화
		function resetSearch() {
			val.value = '';
			val.focus();
		}
		
		// 게시글 검색
		function searchBoard() {
			let searchKey = key.value;
			let searchVal = val.value;
			
			// 검색 ajax
			fetch('ajaxBoardSearch.do?', {
				method: 'post',
				headers: {'Content-Type': 'application/x-www-form-urlencoded'},
				body: 'key=' + searchKey + '&val=' + searchVal
			})
			.then(response => response.json())
			.then(result => {
				// 결과 없음
				if (result.length == 0) {
					alert('검색결과가 없습니다.');
					return;
				}
				
				resultList.innerHTML = '';
				
				// 결과 출력
				for (let board of result) {
					const tr = document.createElement('tr');
					tr.setAttribute('class','board');
					
					const boardId = document.createElement('td');
					boardId.setAttribute('class', 'text-center');
					boardId.innerText = board.boardId;
					const boardTitle = document.createElement('td');
					boardTitle.innerText = board.boardTitle;
					const boardDate = document.createElement('td');
					boardDate.setAttribute('class', 'text-center');
					boardDate.innerText = board.boardDate;

					tr.appendChild(boardId);
					tr.appendChild(boardTitle);
					tr.appendChild(boardDate);
					resultList.appendChild(tr);
				}
				boardDetail();
			})
		}
		
		searchBtn.addEventListener('click', () => searchBoard())
		val.addEventListener('keydown', event => {
			if (event.key === 'Enter') searchBoard();
		})
	</script>
</body>
</html>