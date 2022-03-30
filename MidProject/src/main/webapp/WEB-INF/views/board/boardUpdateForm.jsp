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
		<button class="btn btn-outline-secondary" id="updateBtn">수정</button>
		<button class="btn btn-outline-secondary"  onclick='location.href="boardDetail.do?boardId=${board.boardId }"'>취소</button>
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
		 const isUpdate = confirm('수정하시겠습니까?');
		 const textarea = document.querySelector('.note-editable');
		 boardContent.value = textarea.innerHTML;
		 
		 if (isUpdate) frm.submit();
	 })
</script>