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
	<h1>공지사항 상세</h1>
	<div>
		<ul>
			<li>번호 : ${board.boardId }</li>
			<li>작성자 : ${board.boardWriter }</li>
			<li>작성일 : ${board.boardDate }</li>
			<li>제목 : ${board.boardTitle }</li>
			<li>내용 : ${board.boardContent }</li>
		</ul>
	</div>
	
	<div>
		<form method="post" id="frm">
			<input type="hidden" name="boardId" value ="${board.boardId }">
			<input type="button" value="수정" id="updateBtn">
			<input type="button" value="삭제" id="deleteBtn">
		</form>
		<input type="button" value="목록" onclick='location.href="boardList.do"'>
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