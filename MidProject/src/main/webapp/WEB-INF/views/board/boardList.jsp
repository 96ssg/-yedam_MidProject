<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container-md">
	<div class="fs-2 px-3 my-3">공지사항</div>
	<hr>
	
	<div class="input-group my-4">
		<select style="width: 10%"name="key" id="key" onchange="resetSearch()">
			<option value="1">전체</option>
			<option value="2">제목</option>
			<option value="3">내용</option>
		</select>
		<input type="text" class="form-control" name="val" id="val" placeholder="검색할 단어를 입력하세요">
		<button class="btn btn-outline-secondary" id="searchBtn">검색하기</button>
		<select style="width: 10%; margin-left: 20px;" id="pagesPerView">
			<option value="10">10개씩 보기</option>
			<option value="20">20개씩 보기</option>
			<option value="30">30개씩 보기</option>
			<option value="1">1개씩 보기</option>
		</select>
	</div>


	<table class="table table-hover">
		<thead>
			<tr class="text-center">
				<th>번호</th>
				<th>제목</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody id="resultList"></tbody>
	</table>

	<nav>
	  <ul class="pagination justify-content-center">
	    <li class="page-item" id="prevBtn">
	      <a class="page-link" aria-label="Previous">
	        <span aria-hidden="true">&laquo;</span>
	      </a>
	    </li>
	    
	    <li class="page-item" id="nextBtn">
	      <a class="page-link" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    </li>
	  </ul>
	</nav>

	<c:if test="${role eq 'admin' }">
		<div align="right">
			<button class="btn btn-outline-secondary" id="listBtn" onclick='location.href="boardInsertForm.do"'>글쓰기</button>
		</div>
	</c:if>
</div>

<script>
	
	// 글쓰기 후 새로고침 시 글쓰기 중복 수행 방지를 위한 url 변경
	history.pushState(null, null, 'boardList.do');
	
	// 페이지 버튼 그룹핑을 위한 태그
	const pagebutton = document.createElement('pagebutton');
	prevBtn.after(pagebutton);
	
	let pageGroup = document.createElement('pageGroup');
	pageGroup.setAttribute('id','pageGroup-1');
	pageGroup.setAttribute('data-status','on')
	pageGroup.setAttribute('style','');
	pagebutton.append(pageGroup);
	
	// 첫 화면 출력
	window.onload = pagination(${boardList});
	
	// 페이징 + 결과 표시
	function pagination(boardList) {
		let pageNum = 1;	// 페이지 번호
		let count = 0;		// 한 화면에 표시할 페이지 갯수
		let group = 1;		// 페이지의 10단위 숫자
		paintPageBtn(pageNum, group);
		
		for (let board of boardList) {
			const tr = document.createElement('tr');
			tr.setAttribute('class','board pages page-'+ pageNum);
			tr.setAttribute('style', '');
			count++;
			
			// 딱 맞게 끝나면 새 페이지 생성 안함 && 한 페이지에 count만큼 표시
			if (!(pageNum * Number(pagesPerView.value) == boardList.length)) {
				if (count == Number(pagesPerView.value)) {
					pageNum++;
					paintPageBtn(pageNum, group);
					count = 0;
					
					// 페이지 번호가 10의 배수면 새 페이지 그룹 생성
					if (parseInt(pageNum/10) === group) {
						group++;
						
						console.log('new Page Group')
						const newPageGroup = document.createElement('pageGroup');
						newPageGroup.setAttribute('id','pageGroup-'+group);
						newPageGroup.setAttribute('data-status','off');
						newPageGroup.setAttribute('style','display: none');
						
						// 이전 페이지 그룹 뒤에 추가
						document.getElementById('pageGroup-'+(group-1)).after(newPageGroup);
					}
				}
			}
			
			const boardId = document.createElement('td');
			boardId.setAttribute('class', 'text-center');
			boardId.innerText = board.boardId;

			const boardTitle = document.createElement('td');
			boardTitle.innerText = board.boardTitle;
			
			const boardDate = document.createElement('td');
			boardDate.setAttribute('class', 'text-center');
			let date = board.boardDate;
			
			if (!(date.split('-').length == 3)) {
				// 날짜 형식 변환
				date = board.boardDate.replace(',','').replace('월','').split(' ');
				date[0] = (date[0].length < 2)? '0'+date[0] : date[0];
				date[1] = (date[1].length < 2)? '0'+date[1] : date[1];
				date = date[2]+'-'+date[0]+'-'+date[1]
			} 
			
			boardDate.innerText = date;

			tr.appendChild(boardId);
			tr.appendChild(boardTitle);
			tr.appendChild(boardDate);
			resultList.appendChild(tr);
		}
		boardDetail();
		document.querySelector('#page-1').click();
	}
	
	// 페이지 버튼 생성
	function paintPageBtn(pageNum, group) {
		const li = document.createElement('li');
		li.setAttribute('class', 'page-item mx-1');
		li.setAttribute('style', 'display: inline-block');
		li.setAttribute('id','page-'+pageNum);
		
		li.addEventListener('click', () => selectPage('page-'+pageNum))
		
		const a = document.createElement('a'); 
		a.setAttribute('class', 'page-link');
		a.innerText = pageNum;
		
		li.append(a);
		
		// 해당하는 페이지 그룹에 추가
		const id = 'pageGroup-'+group;
		
		document.getElementById(id).append(li);
	}
	
	// 클릭한 페이지 표시
	function selectPage(pageNum) {
		const pages = document.querySelectorAll('.pages');
		pages.forEach(page => page.style = 'display: none')
		
		const selected = document.getElementsByClassName(pageNum);
		for (let page of selected) {
			page.style = '';
		}
	}
	
	function onPrevBtn() {
		const currentPageGroup = document.querySelector('pageGroup[data-status=on]');
		
		
	}
	function onNextBtn() {
		const currentPageGroup = document.querySelector('pageGroup[data-status=on]');
		const currentPageNum = parseInt(currnetPageGroup.id.substring(10));
	}
	
	
	
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
// 			pageBtn.innerHTML = '';
			pagination(result);
			boardDetail();
		})
	}
	
	// enter 키 적용
	searchBtn.addEventListener('click', () => searchBoard())
	val.addEventListener('keydown', event => {
		if (event.key === 'Enter') searchBoard();
	})
</script>
