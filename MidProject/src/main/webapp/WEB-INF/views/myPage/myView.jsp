<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery.min.js"></script>
</head>
<body>
	<div align="center">
		<div>
			<h1>내 정보</h1>
		</div>
		<div>
		<table class="table">
		<c:if test="${role eq 'admin'||'professor' }">
			<tr>
			<th>학번/교번</th>
			<td>${user.profId }</td>
			</tr>
			<tr>
			<th>이름</th>
			<td>${user.profName }</td>
			</tr>
			<tr>
			<th>생년월일</th>
			<td>${user.profBirth }</td>
			</tr>
			<tr>
			<th>전화번호</th>
			<td>${user.profPhone }</td>
			</tr>
			<tr>
			<th>사진</th>
			<td>${user.profImg }</td>
			</tr>
			<tr>
			<th>학과번호</th>
			<td>${user.deptId }</td>
			</tr>
			</c:if>
			<c:if test="${role eq 'student' }">
			<tr>
			<th>학번/교번</th>
			<td>${user.studentId }</td>
			</tr>
			<tr>
			<th>이름</th>
			<td>${user.studentName }</td>
			</tr>
			<tr>
			<th>생년월일</th>
			<td>${user.studentBirth }</td>
			</tr>
			<tr>
			<th>학년</th>
			<td>${user.studentSemester }</td>
			</tr>
			<tr>
			<th>학기</th>
			<td>${user.studentGrade }</td>
			</tr>
			<tr>
			<th>전화번호</th>
			<td>${user.studentPhone }</td>
			</tr>
			<tr>
			<th>사진</th>
			<td>${user.studentImg }</td>
			</tr>
			<tr>
			<th>이수학점</th>
			<td>${user.studentScore }</td>
			</tr>
			<tr>
			<th>학과번호</th>
			<td>${user.deptId }</td>
			</tr>
			</c:if>
		</table>
		</div>
	</div>
</body>
</html>