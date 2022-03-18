/**
 * wirteOn (글등록)
 */
 
 $(document).ready(function(){
	$('#writeOn').on('click',function(){
		event.preventDefault();
		
		$.ajax({
			type:"post",
			url:"list",
			data:{"comTitle": $('#comTitle').val(),
					"comComent": $('#comComent').val(),
					  "comPwd":  $('#comPwd').val(),
					  "comCount": $('#comCount').val(),
					  "memId": $('#memId').val(),},
			dataType:'text',
			success:function(result){
				if(result == "success"){
					alert("등록완료!\nlist 페이지로 이동합니다.");
					location.href="/list";
				}else{
				    alert("다시 등록해 주세요");
			 }
			},
			error:function(data, textStatus){
				alert("전송 실패");
			}
		});
	});
});