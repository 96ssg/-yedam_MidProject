<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<div align="center">
	<div>
		<h1>�л�����</h1>
	</div>
	<div>
		<form action="studentUpdateForm.do" method="post">
			<div>
				<ul>
					<li> ${students.studentId }</li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
				</ul>
					
					
			</div><br />
			<div>
				<button type="button" onclick="formCheck()">�л� ���</button>&nbsp;&nbsp;&nbsp;
				<button type="reset">�� ��</button>&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="location.href='main.do'">Ȩ</button>
			</div>
		</form>
	</div>
</div>