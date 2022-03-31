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
		<div class="fs-2 px-3 mt-3">${board.boardTitle }</div>
		<div class="fs-6 px-3 my-1">${board.boardDate }</div>
		<hr>
		<div class="fs-4 px-3 my-1" style="height: 50vh">${board.boardContent }</div>
		<hr>
		<div class="mb-5" align="right">
			<form method="post" id="frm">
				<c:if test="${role eq 'admin' }">
					<input type="hidden" name="boardId" value="${board.boardId }">
					<button class="btn btn-outline-secondary" id="updateBtn">수정</button>
					<button class="btn btn-outline-secondary" id="deleteBtn">삭제</button>
				</c:if>
				<button class="btn btn-outline-secondary" id="listBtn">목록</button>
			</form>
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
				let check = confirm('삭제하시겠습니까?');
				if (check) {
					frm.setAttribute('action','boardDelete.do');
					alert('삭제되었습니다.');
					frm.submit();
				}
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

</body>
</html>