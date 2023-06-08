/**
 * 
 */
 
 	//페이지 로딩 시 반드시 실행 되어야 하는 함수
 	$(document).ready(function(){
			//서버로부터 전달받은 값 저장하기 위해 serult 변수 선언 후 전달 받은 값 초기화
			let result = '<c:out value="${result}"/>';
			
			checkAlert(result);
			
			function checkAlert(result) {
				if(result === '') {
					return;
				}
				if (result === "enroll success") {
					alert("등록이 완료 되었습니다.")
				}
				if (result === "modify success") {
					alert("수정이 완료 되었습니다.")
				}
				if (result === "delete success") {
					alert("삭제가 완료 되었습니다.")
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