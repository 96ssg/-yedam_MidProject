<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div align="center">
	<div>
		<h1>학생등록</h1>
	</div>
	<div>
		<form id="frm" name="frm" action="studentinsert.do" method="post">
			<div>
			<h3>기본 정보</h3>
				<div class="row">
					<div class="col-4"></div>
						<div class="col-2">
							<label class="form-label">학번</label> 
							<input type="text" class="form-control" id="sId" name="sId">
						</div>
					<div class="col-2">
							<label class="form-label">비밀번호</label> 
							<input type="password" class="form-control" id="sPassword" name="sPassword">
						</div>
					<div class="col-4"></div>
			</div>
			
			<div class="row">
					<div class="col-4"></div>
						<div class="col-2">
							<label class="form-label">학생 이름</label> 
							<input type="text" class="form-control" id="sName" name="sName">
						</div>
					<div class="col-2">
							<label class="form-label">전화 번호</label> 
							<input type="number" class="form-control" id="sPhone" name="sPhone">
						</div>
					<div class="col-4"></div>
			</div>
			
			<div class="row">
					<div class="col-5"></div>
						<div class="col-2">
							<label class="form-label" >생년월일</label> 
							<input type="date" class="form-control" id="sBirth" name="sBirth" value="2022-03-19" min="1980-01-01" max="2022-12-31">
						</div>
					
					<div class="col-5"></div>
			</div><br>
			<div class="row">
				<div class="col-3"></div>
					<div class="col-6">---------------------------------------------------------------------------------</div>
				<div class="col-3"></div>			
			</div><br>
			<h3>학적 정보</h3>
			<div>
		 			<div class="col-4"></div>
						<select class="form-select, col-2" id="dId" name="dId">
			   				<option selected value="1">학과 선택</option>
			   				<option value="001">국어국문학과</option>
			   				<option value="002">응용생명과학부</option>
			   				<option value="003">전자공학과</option>
			   				<option value="004">자율전공학부</option>
		   				</select>
	 			
	 					<select class="form-select, col-2" id="sStatus" name="sStatus">
		   						 	<option selected value="1">학적 선택</option>
		   						 	<option value="1">재학</option>
		    						<option value="2">제적</option>
		    						<option value="3">퇴학</option>
		    						<option value="4">휴학</option>
								</select>
		   			<div class="col-4"></div>
	 			</div><br>
	 			
	 			
	 			
	 			<div class="row">
		 			<div class="col-4"></div>
						<select class="form-select, col-2" id="sGrade" name="sGrade">
		   						 	<option selected value="1">학년 선택</option>
		   						 	<option value="1">1학년</option>
		    						<option value="2">2학년</option>
		    						<option value="3">3학년</option>
		    						<option value="4">4학년</option>
								</select>
						<select class="form-select, col-2" id="sSemester" name="sSemester">
		   						 	<option selected value="1">학기 선택</option>
		   						 	<option value="1">1학기</option>
		    						<option value="2">2학기</option>
								</select>
					<div class="col-4"></div>
	 			</div>
	 			
	 			<div class="row">
	 				<div class="col-5"></div>
		   		<div class="col-2">
							<label class="form-label">최대이수학점</label> 
							<input type="number" class="form-control" id="sScore" name="sScore">
						</div>
	 				<div class="col-5"></div>
	 			</div>
		
			</div><br />
			<div align="right">
				<c:if test="${role eq 'admin' }"><button type="submit" class="btn btn-secondary btn-lg">학생 등록</button></c:if>&nbsp;&nbsp;&nbsp;
				<c:if test="${role eq 'admin' }"><button type="reset" class="btn btn-secondary btn-lg">취 소</button></c:if>&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="location.href='home.do'" class="btn btn-secondary btn-lg">홈</button>
			</div>
		</form>
	</div>
</div>