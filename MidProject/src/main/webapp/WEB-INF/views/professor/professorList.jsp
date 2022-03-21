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
	
	<c:forEach items="${professors }" var="professor">
		<table border="1" align="center">
		<tr onClick="location.href='professorUpdateForm.do'">
		
		<td>${professor.p_Id }</td> 
		
		<td>${professor.p_Name }</td> 
		
		<td>${professor.p_Password }</td>
		
		<td>${professor.p_Birth }</td>
		
		<td>${professor.p_Phone}</td>
		
		<td>${professor.p_Img }</td>
		
		<td>${professor.d_Id }</td>
		
		</tr>
	</table>
	</c:forEach>
	
</body>
</html>