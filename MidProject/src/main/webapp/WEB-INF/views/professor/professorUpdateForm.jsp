<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container-md">
	<div class="fs-2 px-3 my-3, col-3">교수수정</div>

	<br>
	<div></div><br>

	
	<div>
		<form action="professorUpdate.do" method="post">
		<input type="hidden" id="profId" name="profId" value=${professors.profId }>
			<table class="table table-hover">
					<tr>
						<th width="100">교수 이름</th>
						<td width="100"><input type="text" id="profName" name="profName" value=${professors.profName }></td>
					</tr>
					
			
			<tr>
					<th width="100">비밀번호</th> 
						<td width="100"><input type="password" id="profPassword" name="profPassword" value=${professors.profPassword }></td>
			</tr>
			

			<tr>
					<th width="100">전화번호</th> 
					<td width="100"><input type="number"  id="profPhone" name="profPhone" value="${professors.profPhone}"></td>
				</tr>
				
			
			</table>
			</div>
			<div></div><br>
			<div></div><br>
			<div></div><br>
			<div></div><br>
			<div></div><br>
			<div></div><br>
			<div></div><br>
			

			</div>
			</div><br />
			<div align="right">
				<button type="button" class="btn btn-outline-secondary" onclick="location.href='home.do'">홈</button>
				<c:if test="${role eq 'admin' }"><button class="btn btn-outline-secondary" type="submit">교수 수정</button></c:if>&nbsp;&nbsp;&nbsp;
				<c:if test="${role eq 'admin' }"><button class="btn btn-outline-secondary" type="reset">취 소</button></c:if>&nbsp;&nbsp;&nbsp;
			</div>

		</form>
	</div>
</div>
</div>
