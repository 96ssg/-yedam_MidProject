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
		<h1>��������</h1>
	</div>
	<div>
		<form id="frm" name="frm" action="professorUpdate.do" method="post">
			<div>
				<table border="1">
					
					<tr>
						<th width="150">�̸�</th>
						<td width="300"><input type="text" id="pName" name="pName"></td>
					</tr>
					
					<tr>
						<th width="150">�н�����</th>
						<td width="300"><input type="password" id="pPassword" name="pPassword"></td>
					</tr>
					
					<tr>
						<th width="150">�޴��� ��ȣ</th>
						<td width="300"><input type="number" id="pPhone" name="pPhone"></td>
					</tr>
					
					<tr>
						<th width="150">����</th>
						<td width="300"><input type="text" id="pImg" name="pImg"></td>
					</tr>

					<tr>
						<th width="150">�а�</th>
						<td width="300"><input type="text" id="dId" name="dId"></td>
					</tr>
												
						
				</table>
			</div><br />
			<div>
				<button type="submit" onclick="register()">���� ����</button>&nbsp;&nbsp;&nbsp;
				<button type="reset">�� ��</button>&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="location.href='main.do'">Ȩ</button>
			</div>
		</form>
	</div>
</div>