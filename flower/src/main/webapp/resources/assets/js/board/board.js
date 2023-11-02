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
	
		alert('okokok');
		
		
	
	}
	
	
	function find(){
		alert('find');
		var search      = $("#search").val();
		var search_text = $("#search_text").val().trim();
		
		//전체검색이면 검색창 내용 지워라
		if(search=='all'){
			$("#search_text").val("");
		}
		
		if(search!='all'&& search_text==''){
			
			alert('검색어를 입력하세요');
			$("#search_text").val(""); //값지우기
			$("#search_text").focus();
			return;
		}
		
	}











