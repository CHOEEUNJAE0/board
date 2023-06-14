<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 등록일을 년/월/일로 표시 해 줄 라이브러리 코드 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<!-- js, css 위치 -->
	<link rel="stylesheet" href="/resources/css/list.css">
	<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>목록 페이지</title>

</head>
<body>

	<div>
		<button type="submit" id="logout_btn">로그아웃</button>
	</div>
	<ul>
  		<li class="nav">게시판 관리</li>
  	</ul>
  	<div class="guide">
	<h3>게시판 관리</h3>
	<hr>
	<div class="content">
	<button type="submit" class="submitbtn" onclick="location.href='/board/enroll'">등록</button>
	<table>
		<thead>
			<tr>
				<th>No.</th>
				<th>사용여부</th>
				<th>제목</th>
				<th>작성자</th>
				<th>등록일</th>
				<th>조회수</th>
			</tr>
		</thead>
		<!--forEach태그로 list가 가진 요소수만큼 반복. items 속성에 서버로부터 전달받은 List 객체를 ${list} 속성값 부여. var 속성에는 반복할 List, 배열 객체 변수명 list 입력  -->
		<c:forEach items="${list}" var="list" >
			<tr>
				<td><c:out value="${list.bno}"/></td>
				<td><c:out value="${list.useyn}"/></td>
				<td>
					<!--<a class="move" href='/board/getpage?bno=<c:out value="${list.bno}"/>'>-->
					<a class="move" href='<c:out value="${list.bno}"/>'>	
						<c:out value="${list.title}"/>
					</a>
				</td>
				<td><c:out value="${list.writer}"/></td>
				<td><fmt:formatDate pattern="yyyy/MM/dd" value="${list.regdate}"/></td>
				<td>1</td>
			</tr>
		</c:forEach>
	</table>
	</div>
	</div>
	<form id="moveForm" method="get">
	</form>
	<!-- 페이지 로딩 시 반드시 실행 되어야 하는 함수 -->
	<script>
		$(document).ready(function(){
			//서버로부터 전달받은 값 저장하기 위해 serult 변수 선언 후 전달 받은 값 초기화
			let result = '<c:out value="${result}"/>';
			
			checkAlert(result);
			
			function checkAlert(result) {
				if(result === '') {
					return;
				}else if (result === "enroll success") {
					alert("등록이 안료 되었습니다.")
				}
			}
		});
		
	    let moveForm = $("#moveForm");
	    
	    $(".move").on("click", function(e){
	        e.preventDefault();
	        
	        moveForm.append("<input type='hidden' name='bno' value='"+ $(this).attr("href")+ "'>");
	        moveForm.attr("action", "/board/get");
	        moveForm.submit();
	    });
	</script>
	
</body>
</html>