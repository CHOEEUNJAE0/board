<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세 조회 페이지</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<body>
	<h2>게시판 관리 상세</h2>
	<hr>
		<div class="input_wrap">
			<label>게시판 번호</label>
			<input name="bno" readonly="readonly" value='<c:out value="${pageInfo.bno}"/>'>
		</div>
		<div class="input_wrap">
			<label>사용여부</label>
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
			<label>등록일</label>
			<input name="regdate" readonly="readonly" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.regDate}"/>'>
		</div>
		<div class="input_wrap">
			<label>내용</label>
			<textarea rows="20" name="content" readonly="readonly"></textarea><c:out value="${pageInfo.content}"/>'>
		</div>
		<div class="btn_wrap">
			<button type="submit" onclick="location.href='/board/list'">취소</button>
			<button type="submit">삭제</button>
			<button type="submit" onclick="location.href='/board/modify'">수정</button>
		</div>
<script>
	
</script>
</body>
</html>