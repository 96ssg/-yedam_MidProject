<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container-md">
	<div class="fs-2 px-3 my-3">학생리스트</div>
	<div align="center">
		<div class="input-group my-4">
			<select style="width: 10%" class="form-select-sm" id="searchKey"
				name="searchKey">
				<option value="1">학번</option>
				<option value="2">이름</option>
			</select> <input type="text" class="form-control" id="searchVal"
				name="searchVal" onkeyup="enterkey()">
			<button class="btn btn-outline-secondary" id="strBtn">검색</button>
		</div>
	</div>
	<form id="frm" method="post" onsubmit="return false">
		<div>
			<table class="table table-hover" id="contents">
				<div>
				<thead>
					<tr align="center">
						<th scope="col">학번</th>
						<th scope="col">학생 이름</th>
						<th scope="col">생년월일</th>
						<th scope="col">학년</th>
						<th scope="col">학기</th>
						<th scope="col">학적</th>
					</tr>
				</thead>
				<tbody id="studentBody" align="center">
					<c:if test="${empty students }">
						<tr>
							<td colspan="5">관련 학생은 존재하지 않습니다.</td>
						</tr>
					</c:if>
					<c:if test="${not empty students }">

						<c:forEach items="${students }" var="s">
							<c:choose>
								<c:when test="${role eq 'admin' }">
									<tr onClick="location.href='studentUpdateForm.do?studentId=${s.studentId }'">
								</c:when>
								<c:otherwise>
									<tr></tr>
								</c:otherwise>
							</c:choose>
							
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
			<div align="right">
			<c:if test="${role eq 'admin' }">
			
				<button type="button" class="btn btn-outline-secondary" onclick="location.href='studentInsertForm.do'">학생등록</button>
			</c:if>
			</div><br>
			
		</div>
<input type="hidden" id="student" name="studentId">
</form>
</div>
</div>
<script>
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
					$("<td></td>").text(item.studentBirth),
					$("<td></td>").text(item.studentGrade),
		 			$("<td></td>").text(item.studentSemester),
					$("<td></td>").text(item.studentPhone)
			);
			if(item.studentStatus == 1){
				$(html).append($("<td></td>").text("재학"))
			}else if(item.studentStatus == 2){
				$(html).append($("<td></td>").text("제적"))
			}else if(item.studentStatus == 3){
				$(html).append($("<td></td>").text("퇴학"))
			}else if(item.studentStatus == 4){
				$(html).append($("<td></td>").text("휴학"))
			}
			$("<td></td>").text()
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

