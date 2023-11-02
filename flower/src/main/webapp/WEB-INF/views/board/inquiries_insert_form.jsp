<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- bootstrap 사용하기 위한 설정 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/assets/css/inquiries.css">
<script src="${ pageContext.request.contextPath }/resources/assets/js/board/board.js"></script>

</head>
<body>

	<form id="send_form">
		<div id="insertform_box">
			<div class="panel panel-primary">
				<div class="panel-heading">문의게시판</div>
				<div class="panel-body">
					<table class="table">
						<tr>
							<th>번호</th>
							<td><input name="inquiries_id" id="inquiries_id" size="110">
							</td>
						</tr>
						
						<tr>
							<th>아이디</th>
							<td><input name="member_id" id="member_id" size="110">
							</td>
						</tr>
						
						<tr>
							<th>카테고리</th>
							<td><input name="inquiries_category" id="inquiries_category" size="110">
							</td>
						</tr>
						
						<tr>
							<th>제목</th>
							<td><input name="inquiries_title" id="inquiries_title" size="110">
							</td>
							
						</tr>
						
						<tr>
							<th>내용</th>
							<td>
								<textarea rows="13" cols="50" id="inquiries_cotent" name="inquiries_cotent"></textarea>
							</td>
						</tr>
						
						<tr>
							<td colspan="2" align="right">
								<input class="insertform_writing_btn" type="button" value="글쓰기" id="send">
								<input class="insertform_insert_btn" type="button" value="목록" onclick="location.href='product'">
							</td>
						</tr>
						
					</table>
				</div>			
				
			</div>
		</div>
	</form>







</body>
</html>