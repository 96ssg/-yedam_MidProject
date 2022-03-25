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
	<h1>공지사항</h1>

	<div>
		<form>
			<select name="key" id="key" onchange="resetSearch()">
				<option value="1">전체</option>
				<option value="2">제목</option>
				<option value="3">내용</option>
			</select>
			<input type="text" name="val" id="val">
			<input type="button" value="검색" id="searchBtn">
		</form>
	</div>
	
	<div>
		<ul>
			<li>번호</li>
			<li>제목</li>
			<li>작성일</li>
		</ul>
	</div>

	<div id="resultList">
		<table class="table">
			<c:forEach items="${boardList }" var="b">
				<tr class="board">
					<td>${b.boardId }</td>
					<td>${b.boardWriter }</td>
					<td>${b.boardTitle }</td>
					<td>${b.boardDate }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	<div>
		<input type="button" value="글쓰기" onclick='location.href="boardInsertForm.do"'>
	</div>
	
	<script>
		// 글쓰기 후 새로고침 시 글쓰기 중복 수행 방지를 위한 url 변경
		history.pushState(null, null, 'boardList.do');
		
		// 클릭한 행에 대한 공지사항의 상세 페이지로 이동
		const boards = document.querySelectorAll('.board');
		boards.forEach((element)=>{
			element.addEventListener('click', () => {
				const boardId = element.children[0].innerText;
				
				location.href="boardDetail.do?boardId=" + boardId;
			})
		})
		
		// 검색값 초기화
		function resetSearch() {
			val.value = '';
			val.focus();
		}
		
		// 게시글 검색
		searchBtn.addEventListener('click', () => {
			let searchKey = key.value;
			let searchVal = val.value;
			
			// 검색 ajax
			fetch('boardSearch.do?', {
				method: 'post',
				headers: {'Content-Type': 'application/x-www-form-urlencoded'},
				body: 'key=' + searchKey + '&val=' + searchVal
			})
			.then(response => response.json())
			.then(result => {
				
				resultList.innerHTML = '';
				
				// 결과 없음
				if (result.length == 0) {
					resultList.append('검색결과가 없습니다.');
					return;
				}
				
				// 결과 출력
				const table = document.createElement('table');
				table.setAttribute('border','1');
				resultList.appendChild(table);
				
				for (let board of result) {
					const tr = document.createElement('tr');
					tr.setAttribute('class','board');
					table.appendChild(tr);
					
					const boardId = document.createElement('td');
					boardId.innerText = board.boardId;
					const boardWriter = document.createElement('td');
					boardWriter.innerText = board.boardWriter;
					const boardTitle = document.createElement('td');
					boardTitle.innerText = board.boardTitle;
					const boardDate = document.createElement('td');
					boardDate.innerText = board.boardDate;

					tr.appendChild(boardId);
					tr.appendChild(boardWriter);
					tr.appendChild(boardTitle);
					tr.appendChild(boardDate);
				}
			})
		})
	</script>
</body>
</html>