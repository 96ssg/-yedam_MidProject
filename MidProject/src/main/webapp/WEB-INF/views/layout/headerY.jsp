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
<!-- nav 방식 토글 내리는방식. -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid">
	   <a class="navbar-brand" href="home.do">수강신청</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
		<ul class="navbar-nav">
			<c:choose>
				<c:when test='${role eq "student" }'>
					<li class="nav-item"><a href="home.do">student home</a></li>
					<li class="nav-item"><a href="studentCourseList.do">course</a></li>
				</c:when>			
				<c:otherwise>
					<li class="nav-item"><a href="home.do">professor home</a></li>
					<li class="nav-item"><a href="professorCourseList.do">course</a></li>
				</c:otherwise>
			</c:choose>
			<li></li>
			<li class="nav-item"><a class="nav-link" href="boardList.do">board</a></li>
			<li class="nav-item"><a class="nav-link" href="lectureList.do">lecture</a></li>
			<li class="nav-item"><a class="nav-link" href="studentList.do">student</a></li>
			<li class="nav-item"><a class="nav-link" href="professorList.do">professor</a></li>
			<li class="nav-item"><a class="nav-link" href="checkPasswordForm.do">myPage</a></li>
			<li class="nav-item"><a class="nav-link" href="logout.do">logout</a></li>
			<li class="nav-item"><a class="nav-link" href="checkpassword.do">myPage</a></li>
			<li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <!-- 드롭다운 방식 버튼 --> 드롭다운
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="professorInsertForm.do">교수등록</a></li>
            <li><a class="dropdown-item" href="studentInsertForm.do">학생등록</a></li>
            <li><a class="dropdown-item" href="#">3</a></li>
            <!--  footer class class="bd-footer py-5 mt-5 bg-light" 고정
            으로 하면 난리나서 대책을 강구하던가 해야될듯함.
             -->
          </ul>
        </li>
			</ul>
			
		</div>
	</div>
</nav>
</body>
</html>
