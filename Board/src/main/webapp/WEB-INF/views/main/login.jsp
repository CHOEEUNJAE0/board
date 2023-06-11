<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 등록일을 년/월/일로 표시 해 줄 라이브러리 코드 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/login.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/main/login" method="get">
		<h1>관리자 페이지</h1>
		<div id="loginid">
			<input type="text" placeholder="아이디를 입력하세요.">
		</div>
		<div id="password">
			<input type="password" placeholder="비밀번호를 입력하세요.">
		</div>
		<div class="btn">			
			<button type="submit" id="login_btn">로그인</button>
		</div>
		<div class="btn">
			<button type="submit" id="join_btn">회원가입</button>
		</div>
	</form>
</body>
</html>