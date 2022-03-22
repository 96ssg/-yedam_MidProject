<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>본인확인</title>
</head>
<body>
	<form name="passwordForm" action="myPage.do" method="post">
		<table>
			<tr>
				<td align="center">:::비밀번호 확인:::</td>
			</tr>
			<tr>
				<td>
					<table border="1">
						<tr>
							<td>현재 비밀번호</td>
							<td>
								<input type="password" name="s_password" placeholder="본인확인을 위해 비밀번호를 입력해주세요." required="required">
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<button type="button" onclick="passwordForm(s_password);">확인</button>
				</td>
			</tr>
		</table>
	</form>
	
	<div align="center">
		<div>
			${message}
		</div>
	</div>
</body>
</html>