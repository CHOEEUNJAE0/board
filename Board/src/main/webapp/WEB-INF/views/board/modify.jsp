<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>        
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/modify.css">
<meta charset="UTF-8">
<title>게시글 수정 페이지</title>
<!-- smart editor -->
<!-- ck editor -->
<script src="https://cdn.ckeditor.com/ckeditor5/38.0.1/classic/ckeditor.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/38.0.1/classic/translations/ko.js"></script>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<body>
	<div>
		<button id="logout_btn" type="submit">로그아웃</button>
	</div>
	<ul>
		<li class="nav">게시판 관리</li>
	</ul>
	<div class="guide">
	<h3>게시글 수정 관리</h3>
	<hr>
		<div class="contents">
		<form id="modifyForm" action="/board/modify" method="post">
		
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
					<td><input name="title" id="title" value='<c:out value="${pageInfo.title}"/>'></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><input name="writer" id="writer" readonly="readonly" value='<c:out value="${pageInfo.writer}"/>'></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="content" id="editor" rows="25"><c:out value="${pageInfo.content}"/></textarea></td>
				</tr>
			</tbody>		
		</table>
		<div class="btn_wrap">
			<a class="btn" id="list_btn">취소</a>
			<a class="btn" id="delete_btn">삭제</a>
			<a class="btn" id="modify_btn">저장</a>
		</div>
		</form>
		<!-- 페이징, 검색 조건 등 추후 기능 수정 시 다양한 처리를 위헤 form태그로 묶음 -->
		<form id="infoForm" action="/board/modify" method="get">
			<input type="hidden" id="bno" name="bno" value='<c:out value="${pageInfo.bno}"/>'>
		</form>
		</div>
		</div>
<script>
	//버튼 동작 하도록
	let form = $("#infoForm");
	//패이지 데이터 수정 form
	let mForm = $("#modifyForm");
	
	//취소 버튼
	$("#list_btn").on("click", function(e){
		form.find("#bno").remove();
		form.attr("action", "/board/list");
		form.submit();
	});
	
	$("#modify_btn").on("click", function(e) {
		mForm.submit();
		form.attr("action", "/board/list");
		console.log("mForm.submit>>>>>" + mForm.submit);
	});
	
	
	$("#delete_btn").on("click", function(e) {
		form.attr("action", "/board/delete");
		form.attr("method", "post");
		form.submit();
	});
	
	
</script>
    <script type="text/javascript">
	      ClassicEditor
	      	.create( document.querySelector( '#editor' ), {
	    	  language : "ko"
	      } )
	      	.catch( error => {
	      		console.error(error);
	      	});
    </script>
</body>
</html>