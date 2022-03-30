<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div align="center">
	<div>
		<h1>교수수정</h1>
	</div>
	<div>
		<form action="professorUpdate.do" method="post">
		<input type="hidden" id="profId" name="profId" value=${professors.profId }>
			<div>
				<div class="row">
				<div class="col-4"></div>
					
					
					<div class="col">
						<label class="form-label">교수 이름</label> 
						<input type="text" class="form-control" id="profName" name="profName" value=${professors.profName }>
				
					</div>
			<div class="col-4"></div>
					</div>
					
			<div class="row">	
				<div class="col-4"></div>
			
			
			
			<div class="col-4">
						<label for="inputPassword4" class="form-label">패스워드</label> 
						<input type="password" class="form-control" id="profPassword" name="profPassword" value=${professors.profPassword }>
			</div>
			
				<div class="col-4"></div>
			</div>
			
			<div class="row">	
				<div class="col-4"></div>

			<div class="col-4">
					<label for="inputPassword4" class="form-label">전화번호</label> 
					<input type="number" class="form-control" id="profPhone" name="profPhone" value="${professors.profPhone}">
				</div>
				
				<div class="col-4"></div>
			</div>
			
			
			</div><br />
			<div align="right">
				<button type="button" class="btn btn-outline-secondary" onclick="location.href='home.do'">홈</button>
				<c:if test="${role eq 'admin' }"><button class="btn btn-outline-secondary" type="submit">교수 수정</button></c:if>&nbsp;&nbsp;&nbsp;
				<c:if test="${role eq 'admin' }"><button class="btn btn-outline-secondary" type="reset">취 소</button></c:if>&nbsp;&nbsp;&nbsp;
			</div>

		</form>
	</div>

</div>
