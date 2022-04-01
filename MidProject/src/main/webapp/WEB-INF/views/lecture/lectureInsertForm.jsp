<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="js/jquery.min.js"></script>
<!-- LectureInsertForm -->
<div class="container-md">
<div class="fs-2 px-3 my-3">강의등록</div>
	<div>
		<form action="lectureInsert.do" onsubmit="return checkPeriod()"
			method="POST">
			<div>
				<table class="table table-hover">
					<tr>
						<th width="100">강의명</th>
						<td width="100"><input type="text" id="lectureName"
							name="lectureName" required="required"></td>
					</tr>
					<tr>
						<th width="100">학점</th>
						<td width="100"><input type="text" id="lectureCredit"
							name="lectureCredit" required="required"></td>
					</tr>
					<tr>
						<th width="100">요일</th>
						<td width="100"><select name="lectureDay" id="lectureDay">
								<option value="MON" selected>MON</option>
								<option value="TUE">TUE</option>
								<option value="WED">WED</option>
								<option value="TUR">TUR</option>
								<option value="FRI">FRI</option>
						</select></td>
					</tr>
					<tr>
						<th width="100">시작시간</th>
						<td><select name="lectureStart" id="lectureStart">
								<option value="1" selected>1교시</option>
								<option value="2">2교시</option>
								<option value="3">3교시</option>
								<option value="4">4교시</option>
								<option value="5">5교시</option>
								<option value="6">6교시</option>
								<option value="7">7교시</option>
								<option value="8">8교시</option>
						</select></td>
					</tr>
					<tr>
						<th width="100">종료시간</th>
						<td width="100"><select name="lectureEnd" id="lectureEnd">
								<option value="2" selected>2교시</option>
								<option value="3">3교시</option>
								<option value="4">4교시</option>
								<option value="5">5교시</option>
								<option value="6">6교시</option>
								<option value="7">7교시</option>
								<option value="8">8교시</option>
								<option value="9">9교시</option>
						</select></td>
					</tr>
					<tr>
						<th width="100">강의실</th>
						<td width="100"><input type="text" id="lectureRoom"
							name="lectureRoom" required="required"></td>
					</tr>
					<tr>
						<th width="100">교수번호</th>
						<td width="100"><select id="sel" name="professorId"
							onchange="selectBoxChange(this.value);">
								<c:forEach items="${list }" var="pr">
									<option value="${pr.profId }">${pr.profName}</option>
								</c:forEach>
						</select></td>
					</tr>
					<tr>
						<th width="100">최대인원</th>
						<td width="100"><input type="text" id="lectureCapacity"
							name="lectureCapacity" required="required"></td>
					</tr>

				</table>
			</div>
			<br />
			<div>
				<button type="submit" class="btn btn-outline-secondary">강의등록</button>
				&nbsp;&nbsp;&nbsp;
				<button type="reset" class="btn btn-outline-secondary">취 소</button>
				&nbsp;&nbsp;&nbsp;
				<button type="button" class="btn btn-outline-secondary"
					onclick="location.href='lectureList.do'">목 록</button>
			</div>
		</form>
	</div>
</div>
<script>
	/* 강의시작시간이 종료시간보다 값이 클 경우 경고창 출력 */
	function checkPeriod() {
		const start = document.getElementById('lectureStart').value;
		const end = document.getElementById('lectureEnd').value;

		if (start >= end) {

			alert("강의 시작,종료 시간을 확인해주세요.");
			return false;
		}
		return true;
	}

	document.getElementById('lectureStart').addEventListener('change',
			checkPeriod);
</script>