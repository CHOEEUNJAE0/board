		$(document).ready(function(){
			//서버로부터 전달받은 값 저장하기 위해 serult 변수 선언 후 전달 받은 값 초기화
			let result = '<c:out value="${result}"/>';
			
			checkAlert(result);
			
			function checkAlert(result) {
				if(result === '') {
					returnn;
				}else if (result === "enroll success") {
					alert("등록이 안료 되었습니다.")
				}
			}
		});