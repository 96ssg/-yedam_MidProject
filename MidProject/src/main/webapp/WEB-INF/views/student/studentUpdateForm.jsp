<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div align="center">
	<div>
		<h1>학생수정</h1>
	</div>
	<form action="studentUpdate.do" method="post">
		<div>
			<input type="hidden" id="studentId" name="studentId"
				value="${students.studentId }">


			<div class="row">
				<div class="col-4"></div>
				<div class="col-4">
					<label class="form-label">이름</label> <input type="text"
						class="form-control" id="studentName" name="studentName"
						value="${students.studentName }">
				</div>
				<div class="col-4"></div>
			</div>
			<br>

			<div class="row">
				<div class="col-4"></div>
				<div class="col-4">
					<label class="form-label">비밀번호</label> <input type="password"
						class="form-control" id="studentPassword" name="studentPassword"
						value="${students.studentPassword }">
				</div>
				<div class="col-4"></div>
			</div>
			<br>
			<div class="row">
				<div class="col-4"></div>
				<div class="col-4">
					<label class="form-label">휴대폰번호</label> <input type="text"
						class="form-control" id="studentPhone" name="studentPhone"
						value="${students.studentPhone }">
				</div>

				<div class="col-4"></div>
			</div>
			<br>
			<div class="row">
				<div class="col-4"></div>
				<div class="col-4">
					<label class="form-label">최대이수학점</label> <input type="number"
						class="form-control" id="studentScore" name="studentScore"
						value="${students.studentScore }">
				</div>
				<div class="col-4"></div>
			</div>
			<br>
			<div>
				<div class="row">
					<div class="col-4"></div>
					<select class="form-select, col-4" id="studentSemester"
						name="studentSemester" value="${students.studentSemester }">
						<option selected disabled value="">학기 선택</option>
						<option value="1">1학기</option>
						<option value="2">2학기</option>
					</select>
					<div class="col-4"></div>
				</div>
				<br>
				<div class="row">
					<div class="col-4"></div>
					<select class="form-select, col-4" id="studentStatus"
						name="studentStatus">
						<option selected disabled value="">학적 선택</option>
						<option value="1">재학</option>
						<option value="2">제적</option>
						<option value="3">퇴학</option>
						<option value="4">휴학</option>
					</select>
					<div class="col-4"></div>
				</div>
				<br>


			</div>
			<br />
			<div>
				<button type="button" class="btn btn-secondary btn-sm" onclick="location.href='home.do'">홈</button>&nbsp;&nbsp;&nbsp;
				<c:if test="${role eq 'admin' }">
					<button type="submit" class="btn btn-secondary btn-sm">학생 수정</button>
				</c:if>
				&nbsp;&nbsp;&nbsp;
				<c:if test="${role eq 'admin' }">
					<button type="reset" class="btn btn-secondary btn-sm">취 소</button>
				</c:if>
				&nbsp;&nbsp;&nbsp;
				<%-- 				<c:if test="${role eq 'admin' }"><button type="submit"  formaction='studentDelete.do'>삭제</button></c:if>
 --%>
			</div>
	</form>
</div>
</div>