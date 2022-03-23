<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<script type="text/javascript">


function register(){
document.frm.submit();

}
</script>
<div align="center">
	<div>
		<h1>교수수정</h1>
	</div>
	<div>
		<form action="professorUpdate.do" method="post">
			<div>
				<table border="1">
					
					<tr>
						<th width="150">교번</th>
						<td width="300"><input type="text" id="pId" name="pId" value="${professors.profId }">
						</td>
					</tr>
					
					<tr>
						<th width="150">이름</th>
						<td width="300"><input type="text" id="pName" name="pName" value=${professors.profName }></td>
					</tr>
					
					<tr>
						<th width="150">패스워드</th>
						<td width="300"><input type="password" id="pPassword" name="pPassword" value=${professors.profPassword }></td>
					</tr>
					
					<tr>
						<th width="150">생년월일</th>
						<td width="300"><input type="date" id="pBirth" name="pBirth" value="2022-03-19" min="1980-01-01" max="2022-12-31"></td>
					</tr>
					
					<tr>
						<th width="150">휴대폰 번호</th>
						<td width="300"><input type="number" id="pPhone" name="pPhone" value="${professors.profPhone }"></td>
					</tr>
					
					<tr>
						<th width="150">사진</th>
						<td width="300"><input type="text" id="pImg" name="pImg" value="${professors.profImg }"></td>
					</tr>
 
					
				</table>
			</div><br />
			<div>
				<button type="submit" onclick="register()">교수 수정</button>&nbsp;&nbsp;&nbsp;
				<button type="reset">취 소</button>&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="location.href='main.do'">홈</button>
			</div>
		</form>
	</div>
</div>