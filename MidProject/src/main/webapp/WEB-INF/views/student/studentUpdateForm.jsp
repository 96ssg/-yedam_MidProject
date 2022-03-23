<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<div align="center">
	<div>
		<h1>학생수정</h1>
	</div>
	<div>
		<form action="studentUpdateForm.do" method="post">
			<div>
				<ul>
					<li> ${students.studentId }</li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
				</ul>
					
					
			</div><br />
			<div>
				<button type="button" onclick="formCheck()">학생 등록</button>&nbsp;&nbsp;&nbsp;
				<button type="reset">취 소</button>&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="location.href='main.do'">홈</button>
			</div>
		</form>
	</div>
</div>