<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<script type="text/javascript">


</script>
<div align="center">
	<div>
		<h1>��������</h1>
	</div>
	<div>
		<form action="professorUpdate.do" method="post">
			<div>
				<table border="1">
					
					<tr>
						<th width="150">����</th>
						<td width="300"><input type="text" id="pId" name="pId" value="${professors.profId }">
						</td>
					</tr>
					
					<tr>
						<th width="150">�̸�</th>
						<td width="300"><input type="text" id="pName" name="pName" value=${professors.profName }></td>
					</tr>
					
					<tr>
						<th width="150">�н�����</th>
						<td width="300"><input type="password" id="pPassword" name="pPassword" value=${professors.profPassword }></td>
					</tr>
					
					<tr>
						<th width="150">����</th>
						<td width="300"><input type="text" id="pImg" name="pImg" value="${professors.profImg }"></td>
					</tr>
 
					
				</table>
			</div><br />
			<div>
				<button type="submit">���� ����</button>&nbsp;&nbsp;&nbsp;
				<button type="reset">�� ��</button>&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="location.href='main.do'">Ȩ</button>
			</div>
		</form>
	</div>
</div>