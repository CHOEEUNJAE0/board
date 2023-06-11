<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>        
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/get.css">
<meta charset="UTF-8">
<title>게시글 상세 조회 페이지</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<body>
	<div>
		<button type="submit" id="logout_btn">로그아웃</button>
	</div>
	<ul>
  		<li class="nav">게시판 관리</li>
  	</ul>
  	<div class="guide">
	<h3>게시판 관리 상세</h3>
	<hr>
	<div class="content">
	<div class="table">
		<div class="input_wrap">
			<label class="title">사용여부</label>
			<input type="radio" name="useyn" value="사용" readonly>사용
			<input type="radio" name="useyn" value="사용" readonly>사용안함
		</div>
		<div class="input_wrap">
			<label>제목</label>
			<input name="title" readonly="readonly" value='<c:out value="${pageInfo.title}"/>'>
		</div>
		<div class="input_wrap">
			<label>작성자</label>
			<input name="writer" readonly="readonly" value='<c:out value="${pageInfo.writer}"/>'>
		</div>
		<div class="input_wrap">
			<label>내용</label>
			<textarea rows="20" name="content" readonly="readonly"><c:out value="${pageInfo.content}"/></textarea>
		</div>
		</div>
		<div class="btn_wrap">
			<!--<button type="submit" onclick="location.href='/board/list'">취소</button>
			<button type="submit">삭제</button>
			<button type="submit" onclick="location.href='/board/modify?bno='${pageInfo.bno}''">수정</button>-->
			<a class="btn" id="list_btn">취소</a>
			<a class="btn" id="delete_btn">삭제</a>
			<a class="btn" id="modify_btn">수정</a>
		</div>

		<!-- 페이징, 검색 조건 등 추후 기능 수정 시 다양한 처리를 위헤 form태그로 묶음 -->
		<form id="infoForm" action="/board/modify" method="get">
			<input type="hidden" id="bno" name="bno" value='<c:out value="${pageInfo.bno}"/>'>
		</form>
	
		</div>
		</div>
<script>
	//버튼 동작 하도록
	let form = $("#infoForm");
	
	$("#list_btn").on("click", function(e){
		form.find("bno").remove();
		form.attr("action", "/board/list");
		form.submit();
	});
	
	$("#modify_btn").on("click", function(e) {
		form.attr("action", "/board/modify");
		form.submit();
	});
</script>
</body>
</html>