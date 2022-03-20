<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>


#menu {
	
   text-align: center;
   
    height: 50px;

    background: #fcc;

}



.main1 {
	list-style:none;
    
    width: 1500px;

    height: 100%;

    margin: 0 auto;

}



.main1>li {

    float: left;

    width: 25%;

    line-height: 50px;

    text-align: center;

    position: relative;

}



.main1>li:hover .main2 {

    left: 0;

}



.main1>li a {

    display: block;
    
  text-align: center;
}



.main1>li a:hover {

    background: #B21016;

    color: #fff;

    font-weight: bold;

}



.main2 {
	list-style:none;

    position: absolute;

    top: 50px;

    left: -9999px;

    background: #ccc;

    width: 335px;
	
	text-align:center;
}



.main2>li {
	text-align:center;
    position: relative;

}


</style>
<body>

<div id="menu">

    <ul class="main1">

        <li><a href="#">공지사항</a></li>

        <li><a href="#">학적 관리</a>

            <ul class="main2">

                <li><a href="studentInsertForm.do">학생 등록</a></li>

                <li><a href="professorInsertForm.do">교수 등록</a></li>

           		<li><a href="studentList.do">학생리스트</a></li>
           		
           		<li><a href="professorList.do">교수리스트</a></li>
           		
            </ul>

        </li>

        <li><a href="#">성적관리</a>

            <ul class="main2">

                <li><a href="#">이수성적</a></li>

                <li><a href="#">취득학점</a></li>

            </ul>

        </li>
	

        <li><a href="#">마이페이지</a>

            <ul class="main2">

                <li><a href="#">개인정보 표시</a></li>

                <li><a href="#">비밀번호 수정</a></li>

                <li><a href="#">시간표</a></li>

            </ul>

        </li>
	 
	</ul>
</div>

</body>
</html>