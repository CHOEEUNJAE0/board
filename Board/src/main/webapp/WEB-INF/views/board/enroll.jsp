<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록 페이지</title>
<!-- smart editor -->
<link rel="stylesheet" href="/resources/css/enroll.css">
<script type="text/javascript" src="/resources/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<script>

function save(){
	oEditors.getById["txtContent"].exec("UPDATE_CONTENTS_FIELD", []);  
    		//스마트 에디터 값을 텍스트컨텐츠로 전달
	var content = document.getElementById("smartEditor").value;
	alert(document.getElementById("txtContent").value); 
    		// 값을 불러올 땐 document.get으로 받아오기
	return; 
}
</script>  
  
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
					<td><input type="radio" name="useyn" value="사용">사용</td>
					<td><input type="radio" name="useyn" value="사용안함">사용 안함</td>
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
					<td><textarea rows="20" name="content"> </textarea></td>
					<script id="smartEditor" type="text/javascript"> 
					var oEditors = [];
					nhn.husky.EZCreator.createInIFrame({
	    			oAppRef: oEditors,
	    			elPlaceHolder: "txtContent",  //textarea ID 입력
	    			sSkinURI: "/libs/smarteditor/SmartEditor2Skin.html",  //martEditor2Skin.html 경로 입력
	    			fCreator: "createSEditor2",
	    			htParams : { 
	    			// 툴바 사용 여부 (true:사용/ false:사용하지 않음) 
	        		bUseToolbar : true, 
					// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음) 
					bUseVerticalResizer : false, 
					// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음) 
					bUseModeChanger : false 
	    				}
					});
			</script>
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