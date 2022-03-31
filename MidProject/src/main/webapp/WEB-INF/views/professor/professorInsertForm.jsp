<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container-md">
	<div class="fs-2 px-3 my-3">교수등록</div>
	<div>
		<form id="frm" name="frm" action="professorInsert.do" method="post">
				<table class="table table-hover">
					<tr>
						<th width="100">교번</th>
						<td width="100"><input type="text" 
							id="pId" name="pId"></td>
					</tr>
						
					<tr>
						<th width="100">이름</th>
						<td width="100"><input type="text" id="pName" name="pName"></td>
					</tr>

					<tr>
						<th width="100">생년월일</th>
						<td width="100"><input type="date" id="pBirth"
							 name="pBirth" value="2022-03-19"
							min="1980-01-01" max="2022-12-31"></td>
					</tr>

					<tr>
						<th width="100">비밀번호</th>
						<td width="100"><input type="password" 
							id="pPassword" name="pPassword"></td>
					</tr>

					<tr>
						<th width="100">전화번호</th>
						<td width="100"><input type="text"
							id="pPhone" name="pPhone" placeholder="Please Number..."></td>
					</tr>

					<tr>
						<th width="100">학과</th>
						<td width="100"><select class="form-select, col-3" id="dId"
							name="dId">
								<option selected disabled value="">학과 선택</option>
								<option value="001">국어국문학과</option>
								<option value="002">응용생명과학부</option>
								<option value="003">전자공학과</option>
								<option value="004">자율전공학부</option>
						</select></td>
					</tr>


		
				</table>
				<br>
				<div></div><br>
					<div align="right">
						<c:if test="${role eq 'admin' }">
							<button type="submit" class="btn btn-outline-secondary" onclick="location.href='professorList.do'">교수
								등록</button>
						</c:if>
						&nbsp;&nbsp;&nbsp;
						<c:if test="${role eq 'admin' }">
							<button type="reset" class="btn btn-outline-secondary">취 소</button>
						</c:if>
						&nbsp;&nbsp;&nbsp;
						<button type="button" class="btn btn-outline-secondary" onclick="location.href='home.do'">홈</button>
					</div>
				<div></div><br/>
			<div></div><br/>
		</form>
	</div>
</div>
