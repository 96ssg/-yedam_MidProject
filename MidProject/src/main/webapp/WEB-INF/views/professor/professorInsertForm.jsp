<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    

<div align="center">
	<div>
		<h1>교수등록</h1>
	</div>
	<div style="width:750px; border: 2px solid black">
		<form id="frm" name="frm" action="professorInsert.do" method="post">
			<div class="row">
				<div class="col-3"></div>
					<div class="col-3">
						<label class="form-label">교번</label> 
						<input type="text" class="form-control" id="pId" name="pId">
					</div>
				<div class="col-3">
						<label class="form-label">이름</label> 
						<input type="text" class="form-control" id="pName" name="pName">
					</div>
				<div class="col-3"></div>
			</div>
			

					
				<div class="row">	
					<div class="col-3"></div>
					<div class="col-3">
					<label class="form-label">생년월일</label> 
					<input type="date" id="pBirth" class="form-control" name="pBirth" value="2022-03-19" min="1980-01-01" max="2022-12-31">
				</div>
					
				
					<div class="col-3">
						<label for="inputPassword4" class="form-label">비밀번호</label> 
						<input type="password" class="form-control" id="pPassword" name="pPassword">
					</div>
						<div class="col-3"></div>
				</div>

			<div class="row">
				<div class="col-4"></div>
				
				<div class="col-4">
					<label for="inputPassword4" class="form-label">전화번호</label> 
					<input type="number" class="form-control" id="pPhone" name="pPhone" placeholder="Please Number...">
				</div>
				
				<div class="col-4"></div>
					
	 			</div><br>
	 			
	 			<div>
		 			<div class="col-5"></div>
						<select class="form-select, col-3" id="dId" name="dId">
			   				<option selected disabled value="">학과 선택</option>
			   				<option value="001">국어국문학과</option>
			   				<option value="002">응용생명과학부</option>
			   				<option value="003">전자공학과</option>
			   				<option value="004">자율전공학부</option>
		   				</select>
		   			<div class="col-4"></div>
	 			</div><br>
			
			</div>
		</div>		
				<!-- 	교번
						<td width="300">&nbsp;
					
					<tr>
						<th width="150">이름</th>
						<td width="300"><input type="text" id="pName" name="pName"></td>
					</tr>
					
					<tr>
						<th width="150">패스워드</th>
						<td width="300"><input type="password" id="pPassword" name="pPassword"></td>
					</tr>
					
					<tr>
						<th width="150">휴대폰 번호</th>
						<td width="300"><input type="number" id="pPhone" name="pPhone"></td>
					</tr>
					
					<tr>
						<th width="150">생년월일</th>
						<td width="300"><input type="date" id="pBirth" name="pBirth" value="2022-03-19" min="1980-01-01" max="2022-12-31"></td>
					</tr>
					
					<tr>
						<th width="150">사진</th>
						<td width="300"><input type="text" id="pImg" name="pImg"></td>
					</tr> 
			
					  <div>
 						  <select id="dId" name="dId">
   							   <option selected disabled value="">학과 선택</option>
   							   <option value="001">국어국문학과</option>
   							   <option value="002">응용생명과학부</option>
   							   <option value="003">전자공학과</option>
   							   <option value="004">자율전공학부</option>
   						 </select>
 					 </div>
				</table> -->
			<br />
			</div>
			<div align="center">
				<c:if test="${role eq 'admin' }"><button type="submit" onclick="location.href='professorList.do'">교수 등록</button></c:if>&nbsp;&nbsp;&nbsp;
				<c:if test="${role eq 'admin' }"><button type="reset">취 소</button></c:if>&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="location.href='home.do'">홈</button>
			</div>
		</form>
