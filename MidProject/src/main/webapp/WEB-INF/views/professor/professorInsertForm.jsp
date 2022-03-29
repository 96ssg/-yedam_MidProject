<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>

<div align="center">
	<div>
		<h1>교수등록</h1>
	</div>
	<div>
		<form id="frm" name="frm" action="professorInsert.do" method="post">
			<div>
				<table border="1">

					<tr>
						<th width="150">교번</th>
						<td width="300"><input type="text" id="pId" name="pId">&nbsp;
						</td>
					</tr>
					
					<tr>
						<th width="150">이름</th>
						<td width="300"><input type="text" id="pName" name="pName"></td>
					</tr>
					
					<tr>
						<th width="150">패스워드</th>
						<td width="300"><input type="password" id="pPassword" name="pPassword"></td>
					</tr>
					
					<tr>
						<th width="150">생년월일</th>
						<td width="300"><input type="date" id="pBirth" name="pBirth" value="2022-03-19" min="1980-01-01" max="2022-12-31"></td>
					</tr>
					
					<tr>
						<th width="150">휴대폰 번호</th>
						<td width="300"><input type="number" id="pPhone" name="pPhone"></td>
					</tr>
					
					<tr>
						<th width="150">사진</th>
						<td width="300"><input type="text" id="pImg" name="pImg"></td>
					</tr>

					<tr>
						<th width="150">학과</th>
							<td width="300">
								<select id="dId" name="dId">
		   						 	<option value="1" selected>국어국문학과</option>
		    						<option value="2">응용생명과학부</option>
		    						<option value="3">전자공학과</option>
		    						<option value="4">자율전공학부</option>
								</select>
							</td>
					</tr>
					
				</table>
			</div><br />
			<div>
				<c:if test="${role eq 'admin' }"><button type="submit" onclick="location.href='professorList.do'">교수 등록</button></c:if>&nbsp;&nbsp;&nbsp;
				<c:if test="${role eq 'admin' }"><button type="reset">취 소</button></c:if>&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="location.href='home.do'">홈</button>
			</div>
		</form>
	</div>
</div>