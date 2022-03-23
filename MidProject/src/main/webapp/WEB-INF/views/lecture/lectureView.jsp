<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
<form action="lectureUpdate.do" method="post">
<div align="center">
<div><h1>강의 상세 정보</h1></div>
<div>
			<table border="1">
						<tr>
							<th width="100">강의번호</th>
							<td width="150"><input type="number" name="lectureId" id="lectureId" value="${vo.lectureId}"></td>
							<th width="100">강의명</th>
							<td width="150">${vo.lectureName }</td>
						</tr>
						<tr>
							<th>요일</th>
							<td colspan="3">${vo.lectureDay }</td>
						</tr>
						<tr>
							<th>강의실</th>
							<td colspan="3"><input type="text" name="lectureRoom" id="lectureRoom" value="${vo.lectureRoom}"></td>
						</tr>
					</table>
		</div><br>
		<div>
			<button type="button" onclick="location.href='lectureList.do'">목록가기</button>&nbsp;&nbsp;
			<input type="submit" value="수정">&nbsp;&nbsp;
		</div>
		
	</div>
	</form>
</body>
</html>