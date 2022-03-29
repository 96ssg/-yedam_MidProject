<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div align="center">
	<div>
		<h1>학생등록</h1>
	</div>
	<div>
		<form id="frm" name="frm" action="studentinsert.do" method="post">
			<div>
				<table border="1">
					
					<tr>
						<th width="150">학번</th>
						<td width="300"><input type="text" id="sId" name="sId">&nbsp;
						</td>
					</tr>
					
					<tr>
						<th width="150">패스워드</th>
						<td width="300"><input type="password" id="sPassword" name="sPassword"></td>
					</tr>
					
					<tr>
						<th width="150">이름</th>
						<td width="300"><input type="text" id="sName" name="sName"></td>
					</tr>
					
					<tr>
						<th width="150">휴대폰번호</th>
						<td width="300"><input type="number" id="sPhone" name="sPhone"></td>
					</tr>
					
					<tr>
						<th width="150">생년월일</th>
						<td width="300"><input type="date" id="sBirth" name="sBirth" value="2022-03-19" min="1980-01-01" max="2022-12-31"></td>
					</tr>
					
					<tr>
						<th width="150">학기</th>
							<td>
								<select id="sSemester" name="sSemester">
		   						 	<option value="1" selected>1학기</option>
		    						<option value="2">2학기</option>
								</select>
							</td>
					</tr>
					
					<tr>
						<th width="150">학년</th>
						<td width="300"><input type="number" id="sGrade" name="sGrade"></td>
					</tr>
						
					<tr>
						<th width="150">사진</th>
						<td width="300"><input type="text" id="sImg" name="sImg"></td>
					</tr>	
					
					<tr>
						<th width="150">이수학점</th>
						<td width="300"><input type="number" id="sScore" name="sScore"></td>
					</tr>	
					
					 <div>
 						  <select id="dId" name="dId">
   							   <option selected disabled value="">학과 선택</option>
   							   <option value="001">국어국문학과</option>
   							   <option value="002">응용생명과학부</option>
   							   <option value="003">전자공학과</option>
   							   <option value="004">자율전공학부</option>
   						 </select>
 					 </div>
					
					<th width="150" >학적</th>
							<td>
								<select id="sStatus" name="sStatus">
		   						 	<option value="1" selected>재학</option>
		    						<option value="2">제적</option>
		    						<option value="3">퇴학</option>
		    						<option value="4">휴학</option>
								</select>
							</td>
					</tr>
		<%-- 			<tr>
					   <th width="150">담당교수</th>
					   <td>
					      <select name="profId">
					         <c:forEach var="professor" items="${professors }">
					            <option value="${professor.profId }">${professor.profName}</option>
					         </c:forEach>
					      </select>
					   </td>
					</tr>
 --%>
					
				</table>
			</div><br />
			<div>
				<c:if test="${role eq 'admin' }"><button type="submit">학생 등록</button></c:if>&nbsp;&nbsp;&nbsp;
				<c:if test="${role eq 'admin' }"><button type="reset">취 소</button></c:if>&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="location.href='home.do'">홈</button>
			</div>
		</form>
	</div>
</div>