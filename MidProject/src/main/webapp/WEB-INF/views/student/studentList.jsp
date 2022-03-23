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
	
	<table border="1">
	<c:forEach items="${students }" var="s">
		<tr onClick="location.href='studentUpdateForm.do'">
		
		<td>${s.studentId }</td> 
		
		<td>${s.studentName }</td> 
		
		<td>${s.studentPassword }</td>
		
		<td>${s.studentBirth }</td>
		
		<td>${s.studentGrade }</td>
		
		<td>${s.studentSemster }</td>
		
		<td>${s.studentPhone}</td>
		
		<td>${s.studentImg }</td>
		
		<td>${s.studentScore }</td>
		
		<td>${s.deptId }</td>
		
		</tr>
	</c:forEach>
	</table>
	
	<script>
		const sList = '<c:out value="${students }"/>';
		console.log(sList);
	</script>
	
</body>
</html>