/**
 * 
 */
 
 var oEditors = [];
 	nhn.husky.EZCreator.createInIFrame({
 		oAppRef : oEditors,
 		elPlaceHolder : "editorTxt",
 		sSkinURI : "smarteditor/SmartEditor2Skin.html",
 		fCreator : "creatorSEditor2",
 		htParams : {
 				//toolbar 사용여부
 				bUseToolbar : true,
 				//입력창 크기 조절
 				bUseVericalResizer : false,
 				//모드탭 (Editor|HTML|TEXT)
 				bUseModeChanger : true
 				}
 		});
 		$(function() {
 			$("#save_btn").click(function() {
 				oEditors.getById["editorTxt"].exec("UPDATE_CONTENTS_FILED", []);
 				
 				var title = $("#title").vla();
 				var content = document.getElementById("smartEditor").value;
 				
 				if(title == null || title == "") {
 					alert("제목을 입력하세요.")
 				}
 				
				if(content == "" || content == null || content == '&nbsp;' || 
					content == '<br>' || content == '<br/>' || content == '<p>&nbsp;</p>'){
					alert("본문을 작성해주세요.");
					oEditors.getById["smartEditor"].exec("FOCUS"); //포커싱
					return;
				} //이 부분은 스마트에디터 유효성 검사 부분이니 참고하시길 바랍니다.
 			
		});
	})
 		
	
		