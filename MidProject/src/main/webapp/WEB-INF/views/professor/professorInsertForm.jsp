<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>

<div align="center">
	<div>
		<h1>�������</h1>
	</div>
	<div>
		<form id="frm" name="frm" action="professorInsert.do" method="post">
			<div>
				<table border="1">

					<tr>
						<th width="150">����</th>
						<td width="300"><input type="text" id="pId" name="pId">&nbsp;
						</td>
					</tr>
					
					<tr>
						<th width="150">�̸�</th>
						<td width="300"><input type="text" id="pName" name="pName"></td>
					</tr>
					
					<tr>
						<th width="150">�н�����</th>
						<td width="300"><input type="password" id="pPassword" name="pPassword"></td>
					</tr>
					
					<tr>
						<th width="150">�������</th>
						<td width="300"><input type="date" id="pBirth" name="pBirth" value="2022-03-19" min="1980-01-01" max="2022-12-31"></td>
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
							<td width="300">
								<select id="dId" name="dId">
		   						 	<option value="1" selected>������а�</option>
		    						<option value="2">���������к�</option>
		    						<option value="3">���ڰ��а�</option>
		    						<option value="4">���������к�</option>
								</select>
							</td>
					</tr>
					
				</table>
			</div><br />
			<div>
				<c:if test="${role eq 'admin' }"><button type="submit" onclick="location.href='professorList.do'">���� ���</button></c:if>&nbsp;&nbsp;&nbsp;
				<c:if test="${role eq 'admin' }"><button type="reset">�� ��</button></c:if>&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="location.href='home.do'">Ȩ</button>
			</div>
		</form>
	</div>
</div>