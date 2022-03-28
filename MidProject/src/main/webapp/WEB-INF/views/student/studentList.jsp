<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="frm" method="post">
	<table border="1" id="contents">
	<thead>
	<div>
			<select id="searchKey" name="searchKey">
						<option value="1">학번</option>
						<option value="2">학생이름</option>
			</select> 
			<span> 
					<input type="text" id="searchVal" name="searchVal" onkeyup="enterkey()">
					<input type="button" onclick="searchList()" value="검색">
			</span>
	</div>
	</thead>
			<!-- width값은 나중에  -->
		<tr>
			<th width="70">학번</th>
			<th width="150">학생 이름</th>
			<th width="150">생년월일</th>
			<th width="200">학년</th>
			<th width="200">학기</th>
			<th width="250">전화번호</th>
			<th width="200">학적</th>	
		</tr>
		<tbody id="studentBody">
			<c:if test="${empty students }">
				<tr>
					<td colspan="5">관련 학생은 존재하지 않습니다.</td>
				</tr>
			</c:if>
				<c:if test="${not empty students }">
					<c:forEach items="${students }" var="s">
						<tr onClick="location.href='studentUpdateForm.do?studentId=${s.studentId }'" >
				
							<td>${s.studentId }</td> 
					
							<td>${s.studentName }</td> 
					
							<td>${s.studentBirth }</td>
					
							<td>${s.studentGrade }</td>
					
							<td>${s.studentSemester }</td>
					
							<td>${s.studentPhone}</td>
					
							<td>${s.studentStatus }</td>
					<!-- 지도교수 들어올 수도 있음. -->
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
	 </form>
	<script>


	

	
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
					alert("검색한 결과가 존재하지 않아요!");
				}
			}
			})
	}
		function searchResult(data){
		var tb = $("#studentBody");
		$("#studentBody").empty();
		
	 	$.each(data, function(index, item){
			var html = $("<tr align='center'></tr>").attr({
				'onmouseover' : 'this.style.background="#fcecae";',
				'onmouseleave' : 'this.style.background="#FFFFFF";',
				'onclick' : 'studentContents('+item.studentId+')'
			}).append(
					$("<td></td>").text(item.studentId),
					$("<td></td>").text(item.studentName),
		 			$("<td></td>").text(item.studentSemester),
					$("<td></td>").text(item.studentBirth),
					$("<td></td>").text(item.studentPhone), 
					$("<td></td>").text(item.studentGrade),
					$("<td></td>").text(item.studentStatus)
			);
			tb.append(html)
		});
		
		$("#contents").append(tb);
		
		}
		
		
/* 	const sList = '<c:out value="${students }"/>';
		console.log(sList);   */
	</script>
	
</body>
</html>