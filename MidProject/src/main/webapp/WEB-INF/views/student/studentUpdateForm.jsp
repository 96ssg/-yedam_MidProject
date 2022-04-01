<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container-md">
	<div>
		<div class="fs-2 px-3 my-3">학생수정</div>
		<form action="studentUpdate.do" method="post">
			<div>
				<table class="table table-hover">
					<tr>
						<th class="form-label">이름</th>
						<td><input type="text" id="studentName" name="studentName"
							value="${students.studentName }">
						<td>
					</tr>

					<tr>
						<th>비밀번호</th>
						<td><input type="password" id="studentPassword"
							name="studentPassword"></td>
					</tr>

					<tr>
						<th>휴대폰번호</th>
						<td><input type="text" id="studentPhone" name="studentPhone"
							value="${students.studentPhone }"></td>
					</tr>
					<tr>
						<th>최대이수학점</th>
						<td><input type="number" id="studentScore"
							name="studentScore" value="${students.studentScore }"></td>
					</tr>

					<tr>
						<th>학기</th>
						<td><select id="studentSemester" name="studentSemester">
								<option selected value="1">학기 선택</option>
								<option value="1">1학기</option>
								<option value="2">2학기</option>
						</select></td>
					</tr>
					<tr>
						<th>학적</th>
						<td><select id="studentStatus" name="studentStatus">
								<option selected value="1">학적 선택</option>
								<option value="1">재학</option>
								<option value="2">제적</option>
								<option value="3">퇴학</option>
								<option value="4">휴학</option>
						</select></td>
					</tr>


				</table>
			</div>
			<br>
			<div></div>
			<br>
			<div></div>

			<div align="right">
<!-- 				<button type="button" class="btn btn-outline-secondary" -->
<!-- 					onclick="location.href='home.do'">홈</button> -->
<!-- 				&nbsp;&nbsp;&nbsp; -->
				<c:if test="${role eq 'admin' }">
					<button type="submit" class="btn btn-outline-secondary">학생
						수정</button>
				</c:if>
				&nbsp;&nbsp;&nbsp;
				<c:if test="${role eq 'admin' }">
					<button type="reset" class="btn btn-outline-secondary" onclick="window.history.back()">취 소</button>
				</c:if>
				&nbsp;&nbsp;&nbsp;
			</div>
			<div></div>
			<br>
			<div></div>
			<br>
			<div></div>
			<input type="hidden" id="studentId" name="studentId"
				value="${students.studentId }">

		</form>
	</div>
</div>