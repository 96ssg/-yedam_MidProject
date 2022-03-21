<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<div>
<h1>강의 등록</h1>
</div>
<div>
<form action="lectureInsert.do" method="POST">
<div>
<table border="1">
<tr>
<th width="100">강의명</th>
<td width="100"><input type="text" id="lName" name="lName" required="required"></td>
</tr>
<tr>
<th width="100">학점</th>
<td width="100"><input type="text" id="lCredit" name="lCredit" required="required"></td>
</tr>
<tr>
<th width="100">요일</th>
<td width="100"><input type="text" id="lDay" name="lDay" required="required"></td>
</tr>
<tr>
<th width="100">시작시간</th>
<td width="100"><input type="text" id="lStart" name="lStart" required="required"></td>
</tr>
<tr>
<th width="100">종료시간</th>
<td width="100"><input type="text" id="lEnd" name="lEnd" required="required"></td>
</tr>
<tr>
<th width="100">강의실</th>
<td width="100"><input type="text" id="lRoom" name="lRoom" required="required"></td>
</tr>
<tr>
<th width="100">교수번호</th>
<td width="100"><input type="text" id="pId" name="pId" required="required"></td>
</tr>
<tr>
<th width="100">최대인원</th>
<td width="100"><input type="text" id="lCapacity" name="lCapacity" required="required"></td>
</tr>

</table>
</div><br/>
	<div>
	<button type="submit">강의등록</button>&nbsp;&nbsp;&nbsp;
	<button type="reset">취 소</button>&nbsp;&nbsp;&nbsp;
	<button type="button" onclick="location.href='lectureList.do'">목 록</button>
	</div>
</form>
</div>
</div>
</body>
</html>