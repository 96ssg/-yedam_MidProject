<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container-md">
<div align="center">
<div class="fs-2 px-3 my-3" align="left">학생등록</div>
	<div>
		<form id="frm" name="frm" action="studentinsert.do" method="post">
			<div>
				<table  class="table table-hover">
				<tr>
						<tr >
							<th width="100">학번</th> 
							<td width="100"><input type="text" id="sId" name="sId"></td>
				</tr>
				
				<tr>
							<th width="100">비밀번호</th> 
							<td width="100"><input type="password" id="sPassword" name="sPassword"></td>
				</tr>
			
						<tr>
							<th width="100">학생 이름</th> 
							<td width="100"><input type="text" id="sName" name="sName"></td>
						</tr>
					
					<tr>
							<th width="100">전화 번호</th> 
							<td width="100"><input type="number" id="sPhone" name="sPhone"></td>
					</tr>
			
						<tr>
							<th width="100">생년월일</th> 
							<td width="100"><input type="date" id="sBirth" name="sBirth" value="2022-03-19" min="1980-01-01" max="2022-12-31"></td>
						</tr>
						
					<tr>
							<th width="100">학과</th>
							<td width="100"><select id="dId" name="dId">
				   				<option selected value="1">학과 선택</option>
				   				<option value="001">국어국문학과</option>
				   				<option value="002">응용생명과학부</option>
				   				<option value="003">전자공학과</option>
				   				<option value="004">자율전공학부</option>
			   				</select></td>
			   				
		 			</tr>
	 			
	 				<tr>
	 					<th width="100">학적</th>
	 					<td width="100"><select id="sStatus" name="sStatus">
		   						 	<option selected value="1">학적 선택</option>
		   						 	<option value="1">재학</option>
		    						<option value="2">제적</option>
		    						<option value="3">퇴학</option>
		    						<option value="4">휴학</option>
								</select></td>
		   		
		   			</tr>
	 			
	 			
	 				<tr>
	 					<th width="100">학년</th>
						<td width="100"><select id="sGrade" name="sGrade">
		   						 	<option selected value="1">학년 선택</option>
		   						 	<option value="1">1학년</option>
		    						<option value="2">2학년</option>
		    						<option value="3">3학년</option>
		    						<option value="4">4학년</option>
								</select></td>
						
					</tr>
					
					
					<tr>
						<th width="100">학기</th>
						<td width="100"><select  id="sSemester" name="sSemester">
		   						 	<option selected value="1">학기 선택</option>
		   						 	<option value="1">1학기</option>
		    						<option value="2">2학기</option>
						</select></td>
					</tr> 			

					<tr>	
							<th width="100">최대이수학점</th> 
							<td width="100"><input type="number" id="sScore" name="sScore"></td>
					</tr>
			
			</table>
			
			</div><br/>
		
			<div align="right">
				<c:if test="${role eq 'admin' }"><button type="submit" class="btn btn-outline-secondary">학생 등록</button></c:if>&nbsp;&nbsp;&nbsp;
				<c:if test="${role eq 'admin' }"><button type="reset" class="btn btn-outline-secondary">취 소</button></c:if>&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="location.href='home.do'" class="btn btn-outline-secondary">홈</button>
			</div><br>
		<div></div><br>	
		</form>
	</div>
</div>
</div>