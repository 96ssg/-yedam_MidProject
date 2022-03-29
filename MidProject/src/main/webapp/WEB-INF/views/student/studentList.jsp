<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<form id="frm" method="post" onsubmit="return false">
	<table class="table table-bordered" id="contents">
	<thead>
	<div align="center">
			<div></div><br>
			<select class="form-select, col-6 col-sm-1" id="searchKey" name="searchKey">
						<option value="1">학번</option>
						<option value="2">학생이름</option>
			</select> 
			<span> 
					<input type="text" id="searchVal" name="searchVal" onkeyup="enterkey()">
					<input type="button" class="btn btn-secondary" id="strBtn" value="검색">
			</span>
			<div></div><br>
	</div>
	</thead>
			<!-- width값은 나중에  -->
		<tr align="center">
			<th scope="col">학번</th>
			<th scope="col">학생 이름</th>
			<th scope="col">생년월일</th>
			<th scope="col">학년</th>
			<th scope="col">학기</th>
			<th scope="col">전화번호</th>
			<th scope="col">학적</th>	
		</tr>
		<tbody id="studentBody">
			<c:if test="${empty students }">
				<tr>
					<td colspan="5">관련 학생은 존재하지 않습니다.</td>
				</tr>
			</c:if>
				<c:if test="${not empty students }">
					<c:forEach items="${students }" var="s">
							<c:if test="${role eq 'admin' }">
							<tr onClick="location.href='studentUpdateForm.do?studentId=${s.studentId }'" align="center">
							</c:if>
							<td>${s.studentId }</td> 
					
							<td>${s.studentName }</td> 
					
							<td>${s.studentBirth }</td>
					
							<td>${s.studentGrade }</td>
					
							<td>${s.studentSemester }</td>
					
							<td>${s.studentPhone }</td>
							
							<c:if test="${s.studentStatus eq 1 }">							
							<td>재학</td>
							</c:if>
							
							<c:if test="${s.studentStatus eq 2 }">						
							<td>제적</td>
							</c:if>
							
							<c:if test="${s.studentStatus eq 3 }">						
							<td>퇴학</td>
							</c:if>
							
							<c:if test="${s.studentStatus eq 4 }">						
							<td>휴학</td>
							</c:if>
							
					<!-- 지도교수 들어올 수도 있음. -->
							
							
					</c:forEach>
				</c:if>
			</tbody>
			
		</table>
	 </form>
	<script>
	/* 검색 후 업데이트 폼 넘어가는것. 1~4로 구분된 학적 재학 제적등으로 나오게하기. */
	function studentContents(n){
		frm.studentId.value = n;
		frm.action = "studentUpdateForm.do";
		frm.submit();
		}

	
	function searchList(){
		$.ajax({
			url : "ajaxStudentSearch.do",
			type : "post",
			data : {"key" : $("#searchKey").val(),"val": $("#searchVal").val() },
			dataType : "json",
			success : function(result){
				if(result.length > 0){
					// html 로 변환코드
					searchResult(result);  // json data 를 html로 변환해서 뿌려주는 메소드
				
				}else{
					alert("관련 학생은 존재하지 않습니다.");
				}
			}
			})
	}
		function searchResult(data){
		var tb = $("#studentBody");
		$("#studentBody").empty();
		
	 	$.each(data, function(index, item){
			var html = $("<tr align='center'></tr>").attr({
				'onclick' : 'studentContents('+item.studentId+')'
			}).append(
					$("<td></td>").text(item.studentId),
					$("<td></td>").text(item.studentName),
					$("<td></td>").text(item.studentBirth),
					$("<td></td>").text(item.studentGrade),
		 			$("<td></td>").text(item.studentSemester),
					$("<td></td>").text(item.studentPhone), 
					$("<td></td>").text(item.studentStatus)
			);
			tb.append(html)
		});
		
		$("#contents").append(tb);
		
		}
		strBtn.addEventListener('click', searchList);
		function enterkey(){
			if(window.event.keyCode == 13){
				searchList();
			}
		}
		
/* 	const sList = '<c:out value="${students }"/>';
		console.log(sList);   */
	</script>
	
