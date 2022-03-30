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
					<input type="button" value="수정" id="updateBtn">
					<input type="button" value="삭제" id="deleteBtn">
				</c:if>
				<input type="button" value="목록"
					onclick='location.href="boardList.do"'>
			</form>
		</div>
	</div>

	<script>
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

</body>
</html>