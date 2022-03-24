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
	
		<table border="1" align="center">
	<c:forEach items="${professors }" var="professor">
		<tr onClick="location.href='professorUpdateForm.do?professorId=${professor.profId }'">
		
		<td>${professor.profId }</td> 
		
		<td>${professor.profName }</td> 
		
		<td>${professor.profPassword }</td>
		
		<td>${professor.profBirth }</td>
		
		<td>${professor.profPhone}</td>
		
		<td>${professor.profImg }</td>
		
		<td>${professor.deptId }</td>
		
		</tr>
		<button type="button" ></button>
	</c:forEach>
	</table>
	
</body>
</html>