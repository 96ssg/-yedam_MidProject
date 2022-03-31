<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="js/jquery.min.js"></script>
<div class="container-md">
<div align="center">
<div class="fs-2 px-3 my-3" align="left">학생등록</div>
	<div>
		<form id="frm" name="frm" action="studentinsert.do" method="post">
			<div>
				<table  class="table table-hover">
					<tr >
							<th width="100">학번</th> 
							<td width="100"><input type="text" id="sId" name="sId" required></td>
					</tr>
				
					<tr>
							<th width="100">비밀번호</th> 
							<td width="100"><input type="password" id="sPassword" name="sPassword" required></td>
					</tr>
			
					<tr>
							<th width="100">학생 이름</th> 
							<td width="100"><input type="text" id="sName" name="sName" required></td>
					</tr>
					
					<tr>
							<th width="100">전화 번호</th> 
							<td width="100"><input type="number" id="sPhone" name="sPhone" required></td>
					</tr>
			
						<tr>
							<th width="100">생년월일</th> 
							<td width="100"><input type="date" id="sBirth" name="sBirth" value="2022-03-19" min="1980-01-01" max="2022-12-31"></td>
						</tr>
						
				
	 			
	 				<tr>
	 					<th width="100">학적</th>
	 					<td width="100"><select id="sStatus" name="sStatus" required>
		   						 	<option selected value="">학적 선택</option>
		   						 	<option value="1">재학</option>
		    						<option value="2">제적</option>
		    						<option value="3">퇴학</option>
		    						<option value="4">휴학</option>
								</select></td>
		   		
		   			</tr>
	 			
	 			
	 				<tr>
	 					<th width="100">학년</th>
						<td width="100"><select id="sGrade" name="sGrade" required>
		   						 	<option selected value="">학년 선택</option>
		   						 	<option value="1">1학년</option>
		    						<option value="2">2학년</option>
		    						<option value="3">3학년</option>
		    						<option value="4">4학년</option>
								</select></td>
						
					</tr>
					
					
					<tr>
						<th width="100">학기</th>
						<td width="100"><select  id="sSemester" name="sSemester" required>
		   						 	<option selected value="">학기 선택</option>
		   						 	<option value="1">1학기</option>
		    						<option value="2">2학기</option>
						</select></td>
					</tr> 			

					<tr>	
							<th width="100">최대이수학점</th> 
							<td width="100"><input type="number" id="sScore" name="sScore" required></td>
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
			
			</div><br/>
		
			<div align="right">
				<c:if test="${role eq 'admin' }"><button type="submit" class="btn btn-outline-secondary">학생 등록</button></c:if>&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="location.href='studentList.do'" class="btn btn-outline-secondary">목록</button>
			</div><br>
		<div></div><br>	
		</form>
	</div>
	<script>
	
	</script>
</div>
</div>