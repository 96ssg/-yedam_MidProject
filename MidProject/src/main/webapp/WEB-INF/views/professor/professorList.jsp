<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container-md" style="height:70vh;">
	<div class="fs-2 px-3 my-3">교수리스트</div>
	<form id="frm" method="post">
	<table class="table table-hover">
				
		<thead>
		    <tr align="center">
		      <th>교번</th>
		      <th>교수 이름</th>
		      <th>생년월일</th>
		      <th>휴대전화</th>
		    </tr>
		</thead>
		<tbody>
	<c:forEach items="${professors }" var="professor">
		<tr onClick="profcheck('${professor.profId }')" align="center">
		<td>${professor.profId }</td> 
		
		<td>${professor.profName }</td> 
		
		<td>${professor.profBirth }</td>
		
		<td>${professor.profPhone}</td>
		
		<%--<td>${professor.profImg }</td>
		
		<td>${professor.deptId }</td> --%>
		
		</tr>

	</c:forEach>

	</tbody>
	</table>
	<div align="right">
			<c:if test="${role eq 'admin' }">
			
				<button type="button" class="btn btn-outline-secondary" onclick="location.href='professorInsertForm.do'">교수등록</button>
			</c:if>
			</div><br>
	<input type="hidden" id="professorId" name="professorId">
</form>
</div>
<script type="text/javascript">
function profcheck(n){
	console.log(n)
	frm.professorId.value=n;
	frm.action = "professorUpdateForm.do";
	frm.submit();
	
}


</script>

