<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<div class="container-md">
	<div class="fs-2 px-3 mt-3">${board.boardTitle }</div>
	<div class="fs-6 px-3 my-1">${board.boardDate }</div>
	<hr>
	<div class="fs-4 px-3 my-1" style="height: 50vh">${board.boardContent }</div>
	<div id="summernote"></div>
	<hr>
	<div class="mb-5" align="right">
		<form method="post" id="frm">
			<c:if test="${role eq 'admin' }">
				<input type="hidden" name="boardId" value="${board.boardId }">
				<input type="button" value="수정" id="updateBtn">
				<input type="button" value="삭제" id="deleteBtn">
			</c:if>
			<input type="button" value="목록"
				onclick='location.href="boardList.do"'>
		</form>
	</div>
</div>



<h1>공지사항 수정</h1>
<div>
	<form action="boardUpdate.do" method="post">
		<div>
			<ul>
				<li>번호 : ${board.boardId }</li>
				<li>작성자 : ${board.boardWriter }</li>
				<li>작성일 : ${board.boardDate }</li>
				<li>제목 : <input type="text" name="boardTitle" value="${board.boardTitle }" required></li>
				<li>내용 : <textarea rows="20" cols="80" name="boardContent" >${board.boardContent }</textarea></li>
			</ul>
		</div>
		<input type="hidden" name="boardId" value ="${board.boardId }">
		<!-- DB 트랜잭션 발생 횟수를 줄이기 위해 작성자도 submit -->
		<input type="hidden" name="boardWriter" value ="${board.boardWriter }">
		<input type="submit" value="수정">
	</form>
	<input type="button" value="취소" onclick='location.href="boardDetail.do?boardId=${board.boardId }"'>
</div>


<script>
// 	summernote
	 $('#summernote').summernote({
        placeholder: 'Hello stand alone ui',
        tabsize: 2,
        height: 400,
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'italic', 'underline', 'clear']],
          ['color', ['color']],
          ['para', ['paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture']],
          ['view', ['codeview', 'help']]
        ]
      });
</script>