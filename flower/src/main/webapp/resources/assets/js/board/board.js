/**
 * 
 */
function insert_form(){
	
		location.href = 'insert_form';

}


$(document).ready(function(){

	$('#send').click(function(){
		
		
		var inquiries_title = $('#inquiries_title').val().trim();
		var inquiries_cotent = $('#inquiries_cotent').val().trim();
		
		if(inquiries_title==''){
			alert('제목을입력하세요');
			$('#inquiries_title').val(''); //값비우기
			$('#inquiries_title').focus(); //포커스지정
			return;
		}
		
		if(inquiries_cotent==''){
			alert('내용을입력하세요');
			$('#inquiries_cotent').val(''); //값비우기
			$('#inquiries_cotent').focus(); //포커스지정
			return;
		}
		
		$('#send_form').attr('action', 'insert');
		
		$('#send_form').submit();

	});
	
});

	function add_comment(){
	
		//입력값 읽어오기
		var c_content = $(".c_content").val().trim();
		
		if(c_content==''){
			alert('내용을 입력하세요');
			$(".c_content").val();
			$(".c_content").focus();
			return;
		}
		
		//Ajax전송
		$.ajax({
			url			: '/board/insert',
			data		: {'c_content': c_content, 
				   		   'inquiries_id' : '${ vo.inquiries_id }'
				           },
			dateType	: 'json',
			success		: function(result_data){
				
				result_data = {"result":"success"}
				result_data = {"result":"fail"}
				
				if(result_data.result=="success"){
					
					//리뷰목록 읽어오기
					comment_list(1);
					
				}else{
					alert("댓글쓰기 실패");
				}
				
			},
			error		: function(err){
				alert('ddss');
				alert(err.responseText);
			}
			
		});//end_ajax
		
	
	}
	










