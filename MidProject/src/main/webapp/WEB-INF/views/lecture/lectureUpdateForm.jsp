<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- LectureUpdateForm -->
<div class="container-md">
	<div class="fs-2 px-3 my-3">강의 수정</div>
	<form action="lectureUpdate.do" method="post">
		<div>
			<input type="hidden" name="lectureId" id="lectureId"
				value="${vo.lectureId}" required>
			<table class="table table-hover">
				<tr>
					<th width="100">강의명</th>
					<td width="150"><input type="text" name="lectureName"
						id="lectureName" value="${vo.lectureName }" required></td>
				</tr>
				<tr>
					<th width="100">학점</th>
					<td width="150"><input type="text" name="lectureCredit"
						id="lectureCredit" value="${vo.lectureCredit }" required></td>
				</tr>
				<tr>
					<th width="100">요일</th>
					<td width="150">
						<select name="lectureDay" id="lectureDay">
								<option value="0" selected>선택</option>
								<option value="MON">MON</option>
								<option value="TUE">TUE</option>
								<option value="WED">WED</option>
								<option value="TUR">TUR</option>
								<option value="FRI">FRI</option>
						</select>
					</td>
				</tr>
				<tr>
					<th width="100">시작시간</th>
					<td width="150"><input type="text" name="lectureStart"
						id="lectureStart" value="${vo.lectureStart }" required></td>
				</tr>
				<tr>
					<th width="100">종료시간</th>
					<td width="150"><input type="text" name="lectureEnd"
						id="lectureEnd" value="${vo.lectureEnd }" required></td>
				</tr>
				<tr>
					<th width="100">강의실</th>
					<td width="150"><input type="text" name="lectureRoom"
						id="lectureRoom" value="${vo.lectureRoom }" required></td>
				</tr>
				<tr>
					<th width="100">제한인원</th>
					<td width="150"><input type="text" name="lectureCapacity"
						id="lectureCapacity" value="${vo.lectureCapacity }" required></td>
				</tr>

			</table>
		</div>
		<br>
		<div class="mb-5" align="right">
			<button type="button" class="btn btn-outline-secondary"
				onclick="location.href='lectureList.do'">목록가기</button>
			&nbsp;&nbsp; <input type="submit" class="btn btn-outline-secondary"
				value="수정">&nbsp;&nbsp;
		</div>
	</form>
</div>