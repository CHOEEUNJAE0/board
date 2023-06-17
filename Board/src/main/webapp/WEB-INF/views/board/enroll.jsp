<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록 페이지</title>

<link rel="stylesheet" href="/resources/css/enroll.css">
<!-- smart editor -->
<script type="text/javascript" src="smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
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
	<h3>게시판 관리 등록</h3>
	<hr>
	<div class="content">
	<form action="/board/enroll" method="post">
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
					<td id="radiobox"><input type="radio" name="useyn" value="사용">사용 <input type="radio" name="useyn" id="useno" value="사용안함">사용 안함</td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" id="title"></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><input type="text"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="editorTxt" id="editorTxt" rows="20"> </textarea></td>
				</tr>
			
			
			</tbody>
		</table>
		<div class="submit">
			<button class="cancel_btn">취소</button>
			<button class="save_btn">등록</button>
		</div>
	</form>
	</div>
	</div>
</body>
</html>

<script type="text/javascript" scr="/smarteditor/js/smarteditor.js"></script>