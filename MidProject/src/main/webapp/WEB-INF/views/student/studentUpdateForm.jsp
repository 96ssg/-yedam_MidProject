<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<div align="center">
	<div>
		<h1>학생수정</h1>
	</div>
	<div>
		<form action="studentUpdate.do" method="post">
				<div>
				<table border="1">	
					
					<tr>
						<th width="150">이름</th>
						<td width="300"><input type="text" id="studentName" name="studentName" value="${students.studentName }"></td>
					</tr>
					
					<tr>
						<th width="150">패스워드</th>
						<td width="300"><input type="text" id="studentPassword" name="studentPassword" value="${students.studentPassword }"></td>
					</tr>
					
					<tr>
						<th width="150">휴대폰번호</th>
						<td width="300"><input type="text" id="studentPhone" name="studentPhone" value="${students.studentPhone }"></td>
					</tr>
					
					<tr>
						<th width="150">생년월일</th>
						<td width="300"><input type="date" value="2022-03-19" min="1980-01-01" max="2022-12-31"></td>
					</tr>
					
					<tr>
						<th width="150">학기</th>
							<td>
								<select>
		   						 	<option value="1" selected>1학기</option>
		    						<option value="2">2학기</option>
								</select>
							</td>
					</tr>
					
					<tr>
						<th width="150">성적</th>
						<td width="300"><input type="text" id="studentSemester" name="studentSemester" value="${students.studentSemester }"></td>
					</tr>
						
					<tr>
						<th width="150">사진</th>
						<td width="300"><input type="text" id="studentImg" name="studentImg" value="${students.studentImg }"></td>
					</tr>	
					
					<tr>
						<th width="150">학점</th>
						<td width="300"><input type="number" id="sScore" name="sScore" value="${students.studentScore }"></td>
					</tr>	
					
						<tr>
						<th width="150" id="sStatus" name="sStatus">학적</th>
							<td>
								<select>
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
			</div>
		</form>
	</div>
</div>