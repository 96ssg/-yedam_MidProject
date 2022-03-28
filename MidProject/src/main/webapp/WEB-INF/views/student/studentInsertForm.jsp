<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<div align="center">
	<div>
		<h1>�л����</h1>
	</div>
	<div>
		<form id="frm" name="frm" action="studentinsert.do" method="post">
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
						<td width="300"><input type="date" id="sBirth" name="sBirth" value="2022-03-19" min="1980-01-01" max="2022-12-31"></td>
					</tr>
					
					<tr>
						<th width="150">�б�</th>
							<td>
								<select id="sSemester" name="sSemester">
		   						 	<option value="1" selected>1�б�</option>
		    						<option value="2">2�б�</option>
								</select>
							</td>
					</tr>
					
					<tr>
						<th width="150">�г�</th>
						<td width="300"><input type="number" id="sGrade" name="sGrade"></td>
					</tr>
						
					<tr>
						<th width="150">����</th>
						<td width="300"><input type="text" id="sImg" name="sImg"></td>
					</tr>	
					
					<tr>
						<th width="150">�̼�����</th>
						<td width="300"><input type="number" id="sScore" name="sScore"></td>
					</tr>	
					
					<tr>
					
					<tr>
					   <th width="150">��米��</th>
					   <td>
					      <select name="profId">
					         <c:forEach var="professor" items="${professors }">
					            <option value="${professor.profId }">${professor.profName}</option>
					         </c:forEach>
					      </select>
					   </td>
					</tr>

					
				</table>
			</div><br />
			<div>
				<c:if test="${role eq 'admin' }"><button type="submit">�л� ���</button></c:if>&nbsp;&nbsp;&nbsp;
				<c:if test="${role eq 'admin' }"><button type="reset">�� ��</button></c:if>&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="location.href='home.do'">Ȩ</button>
			</div>
		</form>
	</div>
</div>