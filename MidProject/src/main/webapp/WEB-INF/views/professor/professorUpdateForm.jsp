<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<div align="center">
	<div>
		<h1>교수수정</h1>
	</div>
	<div>
		<form action="professorUpdate.do" method="post">
			<div>
				<table border="1">
					
				
					<tr>
						<th width="150">이름</th>
						<td width="300"><input type="text" id="pName" name="pName" value=${professors.profName }></td>
					</tr>
					
					<tr>
						<th width="150">패스워드</th>
						<td width="300"><input type="password" id="profPassword" name="profPassword" value=${professors.profPassword }></td>
					</tr>
					
					<tr>
						<th width="150">사진</th>
						<td width="300"><input type="text" id="pImg" name="pImg" value="${professors.profImg }"></td>
					</tr>
 
					
				</table>
			</div><br />
			<div>
				<button type="button" onclick="location.href='home.do'">홈</button>
				<c:if test="${role eq 'admin' }"><button type="submit">교수 수정</button></c:if>&nbsp;&nbsp;&nbsp;
				<c:if test="${role eq 'admin' }"><button type="reset">취 소</button></c:if>&nbsp;&nbsp;&nbsp;
				<c:if test="${role eq 'admin' }"><button type="submit"  formaction='professorDelete.do'>삭제</button></c:if>						
			</div>
		</form>
	</div>
</div>