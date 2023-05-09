<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록 페이지</title>
</head>
<body>
	<h1>게시판 등록 페이지</h1>
	<form action="/board/enroll" method="post">
		<div class="input_wrap">
			<label>제목</label>
			<input name="title">
		</div>
		<div class="input_wrap">
			<label>작성자</label>
			<input name="writer">
		</div>
		<div class="input_wrap">
			<label>내용</label>
			<textarea rows="20" name="content"> </textarea>
		</div>
		<div class="submit">
			<button class="btn">등록</button>
		</div>	
	</form>
</body>
</html>