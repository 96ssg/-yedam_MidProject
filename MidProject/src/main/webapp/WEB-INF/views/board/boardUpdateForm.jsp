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
	
</body>
</html>