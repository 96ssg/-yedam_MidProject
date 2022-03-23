<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home.do</title>

</head>
<body>
	<div align="center">
		<div>
			<h1>학생 홈</h1>
		</div>
		
		<!-- 수업시간표 -->
		<div id="timetable">
			
		</div>
		
		<!-- 다음 수업 정보 -->
		<div id="nextLecture">
			
		</div>
		
		
	</div>
	
	<script>
		const list = '<c:out value="${myCourseList}"/>';
		console.log(JSON.parse(list));
	</script>
</body>
</html>