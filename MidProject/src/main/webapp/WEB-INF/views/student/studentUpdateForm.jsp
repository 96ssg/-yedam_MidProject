<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div align="center">
	<div>
		<h1>학생수정</h1>
	</div>
	<div>
		<form action="studentUpdate.do" method="post">
	<input type="hidden" id="studentId" name="studentId" value="${students.studentId }">				
				<div>
				<table border="1">	
					<tr>
						<th width="150">이름</th>
						<td width="300"><input type="text" id="studentName" name="studentName" value="${students.studentName }"></td>
					</tr>
					
					<tr>
						<th width="150">패스워드</th>
						<td width="300"><input type="password" id="studentPassword" name="studentPassword" value="${students.studentPassword }"></td>
					</tr>
					
					<tr>
						<th width="150">휴대폰번호</th>
						<td width="300"><input type="text" id="studentPhone" name="studentPhone" value="${students.studentPhone }"></td>
					</tr>
					
					<tr>
						<th width="150">학기</th>
						<td width="300"><input type="text" id="studentSemester" name="studentSemester" value="${students.studentSemester }"></td>
					</tr>
						
					<tr>
						<th width="150">사진</th>
						<td width="300"><input type="text" id="studentImg" name="studentImg" value="${students.studentImg }"></td>
					</tr>	
					
					<tr>
						<th width="150">학점</th>
						<td width="300"><input type="number" id="studentScore" name="studentScore" value="${students.studentScore }"></td>
					</tr>	
					
					<tr>
					<th width="150" >학적</th>
							<td>
								<select id="studentStatus" name="studentStatus">
		   						 	<option value="1" selected>재학</option>
		    						<option value="2">제적</option>
		    						<option value="3">퇴학</option>
		    						<option value="4">휴학</option>
								</select>
							</td>
					</tr>
					
				</table>	
			</div><br />
			<div>
				<button type="button" onclick="location.href='home.do'">홈</button>
				<c:if test="${role eq 'admin' }"><button type="submit">학생 수정</button></c:if>&nbsp;&nbsp;&nbsp;
				<c:if test="${role eq 'admin' }"><button type="reset">취 소</button></c:if>&nbsp;&nbsp;&nbsp;
<%-- 				<c:if test="${role eq 'admin' }"><button type="submit"  formaction='studentDelete.do'>삭제</button></c:if>
 --%>			</div>
 	
		</form>
	</div>
</div>