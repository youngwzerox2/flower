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

<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/assets/css/style.css">

<style type="text/css">

   #box{
      width: 900px;
      margin: auto;
      margin-top: 50px;   
   }

</style>

</head>
<body>

   <div class="feedback-area" id="box">
    <h2 class="heading">문의</h2>
       <form class="feedback-form" id="send_form">
           <!-- <div class="group-input"></div> -->
           <div class="form-field mt-30">
               <input type="text" name="inquiries_title" id="inquiries_title" placeholder="inquiries_title" class="input-field">
           </div>
           <div class="form-field mt-30">
               <textarea name="inquiries_cotent" id="inquiries_cotent" placeholder="inquiries_cotent" class="textarea-field"></textarea>
           </div>
           
           <div class="form-field mt-30">
               <textarea name="inquiries_answer_content" id="inquiries_answer_content" placeholder="inquiries_cotent" class="textarea-field"></textarea>
           </div>
           
           <div class="button-wrap pt-5" style="margin-top: 10px;">
              <input type="button" value="수정하기" class="btn btn-custom-size xl-size btn-pronia-primary" onclick="send(this.form);">
              <input type="button" value="목록보기" class="btn btn-custom-size xl-size btn-pronia-primary" onclick="location.href='product'">
           </div>
       </form>
   </div>
</body>
</html>