<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="lectureUpdate.do" method="post">
<div align="center">
<div><h1>강의 정보 수정</h1></div>
<div>
<input type="hidden" name="lectureId" id="lectureId" value="${vo.lectureId}">
			<table border="1">
						<tr>
							<th width="100">강의명</th>
							<td width="150"><input type="text" name="lectureName" id="lectureName" value="${vo.lectureName }"></td>
							<th width="100">학점</th>
							<td width="150"><input type="text" name="lectureCredit" id="lectureCredit" value="${vo.lectureCredit }"></td>
							<th width="100">요일</th>
							<td width="150"><input type="text" name="lectureDay" id="lectureDay" value="${vo.lectureDay }"></td>
							<th width="100">시작시간</th>
							<td width="150"><input type="text" name="lectureStart" id="lectureStart" value="${vo.lectureStart }"></td>
							<th width="100">종료시간</th>
							<td width="150"><input type="text" name="lectureEnd" id="lectureEnd" value="${vo.lectureEnd }"></td>
							<th width="100">강의실</th>
							<td width="150"><input type="text" name="lectureRoom" id="lectureRoom" value="${vo.lectureRoom }"></td>
							<th width="100">제한인원</th>
							<td width="150"><input type="text" name="lectureCapacity" id="lectureCapacity" value="${vo.lectureCapacity }"></td>
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