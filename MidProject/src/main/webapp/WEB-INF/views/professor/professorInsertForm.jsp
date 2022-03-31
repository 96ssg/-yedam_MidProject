<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container-md" style="height:70vh;">
	<div class="fs-2 px-3 my-3">교수등록</div>
	<div>
		<form id="frm" name="frm" action="professorInsert.do" method="post" onsubmit="return checkIt()">
				<table class="table table-hover">
					<tr>
						<th width="100">교번</th>
						<td width="100"><input type="text" 
							id="pId" name="pId" required></td>
					</tr>
						
					<tr>
						<th width="100">이름</th>
						<td width="100"><input type="text" id="pName" name="pName" required></td>
					</tr>

					<tr>
						<th width="100">생년월일</th>
						<td width="100"><input type="date" id="pBirth"
							 name="pBirth" value="2022-03-19"
							min="1980-01-01" max="2022-12-31"></td>
					</tr>

					<tr>
						<th width="100">비밀번호</th>
						<td width="100">
						<input type="text" id="pPassword" name="pPassword" required></td>
					</tr>

					<tr>
						<th width="100">전화번호</th>
						<td width="100"><input type="text"
							id="pPhone" name="pPhone" required></td>
					</tr>

					<tr>
							<th width="100">학과</th>
							<c:forEach items="${pList }" var="pList">
							<c:if test="${pList.deptId eq '001'}">
							<td width="100">
							<input type="hidden" id="dId" name="dId" value="${pList.deptId }" >
							<input type="text" value="국어국문학과" disabled></td>
							</c:if>
							<c:if test="${pList.deptId eq '002'}">
							<td width="100">
							<input type="hidden" id="dId" name="dId" value="${pList.deptId }" >
							<input type="text" value="응용생명과학부" disabled></td>
							</c:if>
							<c:if test="${pList.deptId eq '003'}">
							<td width="100">
							<input type="hidden" id="dId" name="dId" value="${pList.deptId }" >
							<input type="text" value="전자공학과" disabled></td>
							</c:if>
							<c:if test="${pList.deptId eq '004'}">
							<td width="100">
							<input type="hidden" id="dId" name="dId" value="${pList.deptId }" >
							<input type="text" value="자율전공학부" disabled></td>
							</c:if>
							
			   				</c:forEach>
		 			</tr>


		
				</table>
				<br>
				<div></div><br>
					<div align="right">
						<c:if test="${role eq 'admin' }">
							<button type="submit" class="btn btn-outline-secondary">교수
								등록</button>
						</c:if>
						&nbsp;&nbsp;&nbsp;
						<button type="button" class="btn btn-outline-secondary" onclick="location.href='professorList.do'">목록</button>
					</div>
				<div></div><br/>
			<div></div><br/>
		</form>
		<script>

		function checkIt(){
			if (frm.dId.value == ""){	              
				alert("학과지정을 안해주셨습니다.");
				frm.dId.focus();
				return false;
			}
		}
		</script>
	</div>
</div>
