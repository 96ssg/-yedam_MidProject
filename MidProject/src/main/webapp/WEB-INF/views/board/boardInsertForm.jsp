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
	<h1>공지사항 작성</h1>
	<div>
		<form action="boardInsert.do" method="post">
			<div>
				<ul>
					<li>제목 : <input type="text" name="boardTitle" required></li>
					<li>내용 : <textarea rows="20" cols="80" name="boardContent" ></textarea></li>
				</ul>
			</div>
			<!-- DB 트랜잭션 발생 횟수를 줄이기 위해 작성자도 submit -->
			<input type="submit" value="글쓰기">
		</form>
		<input type="button" value="취소" onclick='location.href="boardList.do"'>
	</div>
	
</body>
</html>