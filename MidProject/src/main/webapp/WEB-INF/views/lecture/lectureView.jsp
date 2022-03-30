<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- LectureView -->
<div class="container-md">
	<div class="fs-2 px-3 my-3">강의 상세 정보</div>
	<form id="frm" method="post">
		<div>
			<table class="table table-hover">
				<tr>
					<th width="100">강의번호</th>
					<td width="150">${vo.lectureId}</td>
				</tr>
				<tr>
					<th width="100">강의명</th>
					<td width="150">${vo.lectureName }</td>
				</tr>
				<tr>
					<th>학점</th>
					<td colspan="3">${vo.lectureCredit }</td>
				</tr>
				<tr>
					<th>요일</th>
					<td colspan="3">${vo.lectureDay }</td>
				</tr>
				<tr>
					<th>강의시간</th>
					<td colspan="3">${vo.lectureStart}~${vo.lectureEnd }교시</td>
				</tr>
				<tr>
					<th>강의실</th>
					<td colspan="3">${vo.lectureRoom}</td>
				</tr>
				<tr>
					<th>교수명</th>
					<td colspan="3">${p.profName }</td>
				</tr>
				<tr>
					<th>교수번호</th>
					<td colspan="3">${p.profId}</td>
				</tr>
				<tr>
					<th>수강가능인원</th>
					<td colspan="3">${vo.lectureCapacity }</td>
				</tr>
			</table>
		</div>
		<br>
		<div>
			<button type="button" class="btn btn-outline-secondary"
				onclick="location.href='lectureList.do'">목록가기</button>
			&nbsp;&nbsp;
			<c:if test="${p.deptId eq user.deptId && role eq 'admin'}">
				<input type="button" class="btn btn-outline-secondary"
					onclick='lectureUpdate(${vo.lectureId},"${vo.professorId }")'
					value="강의수정">&nbsp;&nbsp;
			</c:if>
		</div>
		<input type="hidden" id="lectureId" name="lectureId"> <input
			type="hidden" id="professorId" name="professorId">
	</form>
</div>
<script type="text/javascript">
	/* 강의 수정폼 호출 */
	function lectureUpdate(n,m){
		frm.lectureId.value = n;
		frm.professorId.value = m;
		frm.action = "lectureUpdateForm.do";
		frm.submit();
	}
	</script>