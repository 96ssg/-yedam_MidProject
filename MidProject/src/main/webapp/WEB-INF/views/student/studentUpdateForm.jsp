<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<div align="center">
	<div>
		<h1>�л�����</h1>
	</div>
	<div>
		<form action="studentUpdate.do" method="post">
				<div>
				<table border="1">	
					<tr>
						<th width="150">�й�</th>
						<td width="300"><input type="text" id="studentId" name="studentId" value="${students.studentId }">&nbsp;
						</td>
					</tr>
					
					<tr>
						<th width="150">�н�����</th>
						<td width="300"><input type="text" id="studentPassword" name="studentPassword" value="${students.studentPassword }"></td>
					</tr>
					
					<tr>
						<th width="150">�̸�</th>
						<td width="300"><input type="text" id="studentName" name="studentName" value="${students.studentName }"></td>
					</tr>
					
					<tr>
						<th width="150">�޴�����ȣ</th>
						<td width="300"><input type="text" id="studentPhone" name="studentPhone" value="${students.studentPhone }"></td>
					</tr>
					
					<tr>
						<th width="150">�������</th>
						<td width="300"><input type="date" value="2022-03-19" min="1980-01-01" max="2022-12-31"></td>
					</tr>
					
					<tr>
						<th width="150">�б�</th>
							<td>
								<select>
		   						 	<option value="1" selected>1�б�</option>
		    						<option value="2">2�б�</option>
								</select>
							</td>
					</tr>
					
					<tr>
						<th width="150">����</th>
						<td width="300"><input type="text" id="studentSemster" name="studentSemster" value="${students.studentSemster }"></td>
					</tr>
						
					<tr>
						<th width="150">����</th>
						<td width="300"><input type="text" id="studentImg" name="studentImg" value="${students.studentImg }"></td>
					</tr>	
					
					<tr>
						<th width="150">����</th>
						<td width="300"><input type="number" id="sScore" name="sScore" value="${students.studentScore }"></td>
					</tr>	
					
					
				</table>	
			</div><br />
			<div>
				<button type="submit">�л� ����</button>&nbsp;&nbsp;&nbsp;
				<button type="reset">�� ��</button>&nbsp;&nbsp;&nbsp;
				<button type="submit" formaction='studentDelete.do'>����</button>
				<button type="button" onclick="location.href='home.do'">Ȩ</button>
			</div>
		</form>
	</div>
</div>