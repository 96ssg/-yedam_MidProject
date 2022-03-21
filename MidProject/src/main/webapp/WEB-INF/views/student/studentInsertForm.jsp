<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<div align="center">
	<div>
		<h1>학생등록</h1>
	</div>
	<div>
		<form id="frm" name="frm" action="memberJoin.do" method="post">
			<div>
				<table border="1">
					
					<tr>
						<th width="150">학번</th>
						<td width="300"><input type="text" id="sId" name="sId">&nbsp;
						</td>
					</tr>
					
					<tr>
						<th width="150">패스워드</th>
						<td width="300"><input type="password" id="sPassword" name="sPassword"></td>
					</tr>
					
					<tr>
						<th width="150">이름</th>
						<td width="300"><input type="text" id="sName" name="sName"></td>
					</tr>
					
					<tr>
						<th width="150">휴대폰번호</th>
						<td width="300"><input type="number" id="sPhone" name="sPhone"></td>
					</tr>
					
					<tr>
						<th width="150">생년월일</th>
						<td width="300"><input type="date" value="2022-03-19" min="1980-01-01" max="2022-12-31"></td>
					</tr>
					
					<tr>
						<th width="150">학기</th>
							<td>
								<select>
		   						 	<option value="" selected>1학기</option>
		    						<option value="">2학기</option>
		    						<option value="">계절학기(여름)</option>
		    						<option value="">계절학기(겨울)</option>
								</select>
							</td>
					</tr>
					
					<tr>
						<th width="150">성적</th>
						<td width="300"><input type="text" id="sSemster" name="sSemster"></td>
					</tr>
						
					<tr>
						<th width="150">사진</th>
						<td width="300"><input type="text" id="sImg" name="sImg"></td>
					</tr>	
					
					<tr>
						<th width="150">학점</th>
						<td width="300"><input type="number" id="sScore" name="sScore"></td>
					</tr>	
					
					
				</table>
			</div><br />
			<div>
				<button type="button" onclick="formCheck()">학생 등록</button>&nbsp;&nbsp;&nbsp;
				<button type="reset">취 소</button>&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="location.href='main.do'">홈</button>
			</div>
		</form>
	</div>
</div>