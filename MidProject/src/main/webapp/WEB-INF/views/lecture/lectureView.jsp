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
<form id="frm" method="post">
<div align="center">
<div><h1>강의 상세 정보</h1></div>
<div>
			<table border="1">
						<tr>
							<th width="100">강의번호</th>
							<td width="150">${vo.lectureId}</td>
							<th width="100">강의명</th>
							<td width="150">${vo.lectureName }</td>
						</tr>
						<tr>
							<th>교수명</th>
							<td colspan="3">${p.profName }</td>
						</tr>
						<tr>
							<th>요일</th>
							<td colspan="3">${vo.lectureDay }</td>
						</tr>
						<tr>
							<th>강의실</th>
							<td colspan="3">${vo.lectureRoom}</td>
						</tr>
						<tr>
							<th>교수번호</th>
							<td colspan="3">${p.profId}</td>
						</tr>
					</table>
		</div><br>
		<div>
			<button type="button" onclick="location.href='lectureList.do'">목록가기</button>&nbsp;&nbsp;
			<c:if test="${sessionScope.role eq 'admin' }">
			<input type="button" onclick='lectureUpdate(${vo.lectureId},"${vo.professorId }")' value="강의수정">&nbsp;&nbsp;
			</c:if>	
		</div>
	</div>
	<input type="hidden" id="lectureId" name="lectureId">
	<input type="hidden" id="professorId" name="professorId">
	</form>
	<script type="text/javascript">
	function lectureUpdate(n,m){
		frm.lectureId.value = n;
		frm.professorId.value = m;
		frm.action = "lectureUpdateForm.do";
		frm.submit();
	}
	</script>
</body>
</html>