<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<div>
		<h1>헤더 부분</h1>
		<ul>
			<li>role : ${role }</li>
			<li><a href="studentHome.do">student home</a></li>
			<li><a href="professorHome.do">professor home</a></li>
			<li><a href="logout.do">logout</a></li>
		</ul>
		<hr>
	</div>
</div>
</body>
</html>