<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<div align="center">
	<div>
		<h1>�л����</h1>
	</div>
	<div>
		<form id="frm" name="frm" action="memberJoin.do" method="post">
			<div>
				<table border="1">
					
					<tr>
						<th width="150">�й�</th>
						<td width="300"><input type="text" id="sId" name="sId">&nbsp;
						</td>
					</tr>
					
					<tr>
						<th width="150">�н�����</th>
						<td width="300"><input type="password" id="sPassword" name="sPassword"></td>
					</tr>
					
					<tr>
						<th width="150">�̸�</th>
						<td width="300"><input type="text" id="sName" name="sName"></td>
					</tr>
					
					<tr>
						<th width="150">�޴�����ȣ</th>
						<td width="300"><input type="number" id="sPhone" name="sPhone"></td>
					</tr>
					
					<tr>
						<th width="150">�������</th>
						<td width="300"><input type="date" value="2022-03-19" min="1980-01-01" max="2022-12-31"></td>
					</tr>
					
					<tr>
						<th width="150">�б�</th>
							<td>
								<select>
		   						 	<option value="" selected>1�б�</option>
		    						<option value="">2�б�</option>
		    						<option value="">�����б�(����)</option>
		    						<option value="">�����б�(�ܿ�)</option>
								</select>
							</td>
					</tr>
					
					<tr>
						<th width="150">����</th>
						<td width="300"><input type="text" id="sSemster" name="sSemster"></td>
					</tr>
						
					<tr>
						<th width="150">����</th>
						<td width="300"><input type="text" id="sImg" name="sImg"></td>
					</tr>	
					
					<tr>
						<th width="150">����</th>
						<td width="300"><input type="number" id="sScore" name="sScore"></td>
					</tr>	
					
					
				</table>
			</div><br />
			<div>
				<button type="button" onclick="formCheck()">�л� ���</button>&nbsp;&nbsp;&nbsp;
				<button type="reset">�� ��</button>&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="location.href='main.do'">Ȩ</button>
			</div>
		</form>
	</div>
</div>