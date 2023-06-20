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
	<div class="contents">
		<table>
			<colgroup>
				<col width="15%"/>
				<col width="15%"/>
				<col width="15%"/>
				<col width="55%"/>
			</colgroup>
			<tbody>
				<tr>
					<th>사용여부</th>
					<td id="radiobox"><input type="radio" name="useyn" value="사용">사용 <input type="radio" name="useyn"  id="useyn" value="사용안함">사용안함</td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input name="title" id="title" readonly="readonly" value='<c:out value="${pageInfo.title}"/>'></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><input name="writer" id="writer" readonly="readonly" value='<c:out value="${pageInfo.writer}"/>'></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="content" id="editor" rows="25" readonly="readonly"><c:out value="${pageInfo.content}"/></textarea></td>
				</tr>
		</table>
	
		<div class="btn_wrap">
			<!--<button type="submit" onclick="location.href='/board/list'">취소</button>
			<button type="submit">삭제</button>
			<button type="submit" onclick="location.href='/board/modify?bno='${pageInfo.bno}''">수정</button>-->
			<a class="btn" id="list_btn">취소</a>
			<a class="btn" id="delete_btn" onclick="del()">삭제</a>
			<a class="btn" id="modify_btn">수정</a>
		</div>
		</div>

		<!-- 페이징, 검색 조건 등 추후 기능 수정 시 다양한 처리를 위헤 form태그로 묶음 -->
		<form id="infoForm" action="/board/modify" method="get">
			<input type="hidden" id="bno" name="bno" value='<c:out value="${pageInfo.bno}"/>'>
		</form>
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
	
	$("#delete_btn").on("click", function(e) {
		form.attr("action", "/board/delete");
		form.attr("method", "post")
		form.submit();
	});
	
	function del() {
		if (confirm("정말 삭제하시겠습니까?")) {
			return false;
		}
	}
</script>
</body>
</html>