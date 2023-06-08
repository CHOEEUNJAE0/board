/**
 * 
 */

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