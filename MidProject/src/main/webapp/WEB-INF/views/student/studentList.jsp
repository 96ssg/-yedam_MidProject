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
	<c:forEach items="${students }" var="student">
	
	<table border="1" align="center">
		<tr onClick="location.href='studentUpdateForm.do'">
		
		<td>${student.s_Id }</td> 
		
		<td>${student.s_Name }</td> 
		
		<td>${student.s_Password }</td>
		
		<td>${student.s_Birth }</td>
		
		<td>${student.s_Grade }</td>
		
		<td>${student.s_Semster }</td>
		
		<td>${student.s_Phone}</td>
		
		<td>${student.s_Img }</td>
		
		<td>${student.s_Score }</td>
		
		<td>${student.d_Id }</td>
		
		</tr>
	</table>
	</c:forEach>
	
	<script>
		const sList = '<c:out value="${students }"/>';
		console.log(sList);
	</script>
	
</body>
</html>