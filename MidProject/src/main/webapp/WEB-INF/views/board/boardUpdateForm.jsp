<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<div class="container-md">
	<div class="fs-2 px-3 my-3">공지사항 수정</div>
	<hr>
	<form action="boardUpdate.do" method="post" id="frm">
		<input type="text" class="form-control fs-4 mt-5 mb-4" name="boardTitle" value="${board.boardTitle }" placeholder="제목을 입력하세요" required>
		<div id="summernote">${board.boardContent }</div>
		<input type="hidden" name="boardId" value="${board.boardId }">
		<input type="hidden" name="boardContent" id="boardContent">
	</form>
	<div class="mt-3 mb-5" align="right">
		<button class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal">수정</button>
		<button class="btn btn-outline-secondary"  onclick='location.href="boardDetail.do?boardId=${board.boardId }"'>취소</button>
	</div>
</div>


<!-- 모달 -->
<div class="modal fade" id="modal">
	<div class="modal-dialog">
		<div class="modal-content">

			<div class="modal-header">
				<h4 class="modal-title">알림</h4>
				<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
			</div>

			<div class="modal-body">공지사항을 수정하시겠습니까?</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-bs-dismiss="modal" id="updateBtn">확인</button>
				<button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">취소</button>
			</div>

		</div>
	</div>
</div>



<script>
// 	summernote
	 $('#summernote').summernote({
        placeholder: 'Hello stand alone ui',
        tabsize: 2,
        height: 500,
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
      
//   서머노트 placeholder 수정
	 document.querySelector('.note-placeholder').innerText = '내용을 입력하세요.';
      
	 updateBtn.addEventListener('click', () => {
		 const textarea = document.querySelector('.note-editable');
		 boardContent.value = textarea.innerHTML;
		 
		 frm.submit();
	 })
</script>