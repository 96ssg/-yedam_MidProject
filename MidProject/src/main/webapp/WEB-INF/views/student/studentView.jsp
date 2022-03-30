<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- StudentView -->
<div class="col-lg-10">
	<div class="fs-2 px-3 my-3">학생 상세 정보</div>
	<form id="frm" method="post">
		<div>
			<table class="table table-hover">
				<tr>
					<th width="100">학번</th>
					<td width="150">${students.studentId}</td>
				</tr>
				<tr>
					<th width="100">이름</th>
					<td width="150">${students.studentName }</td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td colspan="3">${students.studentBirth }</td>
				</tr>
				<tr>
					<th>학년</th>
					<td colspan="3">${students.studentGrade }</td>
				</tr>
				<tr>
					<th>학기</th>
					<td colspan="3">${students.studentSemester }</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td colspan="3">${students.studentPhone}</td>
				</tr>
				<tr>
					<th>사진</th>
					<td colspan="3">${students.studentImg }</td>
				</tr>
				<tr>
					<th>학적</th>
					<td colspan="3">${students.studentStatus}</td>
				</tr>
				<tr>
					<th>학과번호</th>
					<td colspan="3">${students.deptId }</td>
				</tr>
			</table>
		</div>
		<br>
		<div>
			<button type="button" class="btn btn-outline-secondary"
				onclick="location.href='chargeStudentList.do'">목록가기</button>
		</div>
	</form>
</div>