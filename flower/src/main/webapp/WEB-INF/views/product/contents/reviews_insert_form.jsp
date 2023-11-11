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

<!-- sweetalert2 -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/style_main.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/style_menu.css">
 	
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/assets/css/inquiries.css">
<script src="${ pageContext.request.contextPath }/resources/assets/js/board/reviews.js"></script>

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
    <h2 class="heading">리뷰</h2>
       <form class="feedback-form" enctype="multipart/form-data" method="post">
           <!-- <div class="group-input"></div> -->
              <div class="form-field me-md-30 mb-30 mb-md-0">
                   <input type="text" name="reviews_id" id="reviews_id" placeholder="reviews_id" class="input-field">
               </div>
               <div class="form-field me-md-30 mb-30 mb-md-0">
                   <input type="text" name="member_id" id="member_id" placeholder="member_id" class="input-field">
               </div>
               <div class="form-field me-md-30 mb-30 mb-md-0">
                   <input type="text" name="product_id" id="product_id" placeholder="product_id" class="input-field">
               </div>
               <div class="form-field">
                   <input type="text" name="reviews_title" id="reviews_title" placeholder="reviews_title" class="input-field">
               </div>
           
	           <div class="form-field mt-30">
	           	   <textarea name="reviews_content" id="reviews_content" placeholder="reviews_content" class="textarea-field"></textarea>
	           </div>
	           <div class="form-field mt-30">
	               <input type="text" name="reviews_score" id="reviews_score" placeholder="reviews_score" class="input-field">
	           </div>
	           
	           <div class="button-wrap pt-5" style="margin-top: 10px;">
	              <input type="button" value="글쓰기" class="btn btn-custom-size xl-size btn-pronia-primary" onclick="send(this.form)">
	              <input type="button" value="목록" class="btn btn-custom-size xl-size btn-pronia-primary" onclick="location.href='product'">
	           </div>
           
       </form>
   </div>
</body>
</html>