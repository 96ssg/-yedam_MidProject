<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="container-md">
	<div class="fs-2 px-3 mt-3">${board.boardTitle }</div>
	<div class="fs-6 px-3 my-1">${board.boardDate }</div>
	<hr>
	<div class="fs-4 px-3 my-1" style="min-height: 50vh">${board.boardContent }</div>
	<hr>
	<div class="mb-5" align="right">
			<c:if test="${role eq 'admin' }">
				<form method="post" id="frm">
					<input type="hidden" name="boardId" value="${board.boardId }">
				</form>
				<button class="btn btn-outline-secondary" id="updateBtn">수정</button>
				<button class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modal">삭제</button>
			</c:if>
			<button class="btn btn-outline-secondary" id="listBtn">목록</button>
	</div>
</div>


<div class="modal fade" id="modal">
	<div class="modal-dialog">
		<div class="modal-content">

			<div class="modal-header">
				<h4 class="modal-title">주의!</h4>
				<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
			</div>

			<div class="modal-body">공지사항을 삭제하시겠습니까?</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-danger" data-bs-dismiss="modal" id="deleteBtn">삭제</button>
				<button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">닫기</button>
			</div>

		</div>
	</div>
</div>


<c:if test="${role eq 'admin'}">
	<script type="text/javascript">
		// 게시글 업데이트
		updateBtn.addEventListener('click',()=> {
			frm.setAttribute('action','boardUpdateForm.do');
			frm.submit();
		});
		
		// 게시글 삭제
		deleteBtn.addEventListener('click', ()=> {
			frm.setAttribute('action','boardDelete.do');
			frm.submit();
		})
	</script>
</c:if>

<script>
	// 목록
	listBtn.addEventListener('click', () => {
		event.preventDefault();
		location.href = "boardList.do"
	})
</script>
