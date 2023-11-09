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
       <form class="feedback-form">
           <input name="reviews_id" type="hidden" value="${vo.reviews_id}" />
           <div class="form-field">
               <input value="${ vo.reviews_title }" type="text" name="reviews_title" id="reviews_title" placeholder="reviews_title" class="input-field">
           </div>
           
           <div class="form-field mt-30">
           	   <textarea name="reviews_content" id="reviews_content" placeholder="reviews_content" class="textarea-field">${ vo.reviews_content }</textarea>
           </div>
           
           <div>
           	<input type="file" name="photo">
           </div>
           
           <div class="button-wrap pt-5" style="margin-top: 10px;">
              <input type="button" value="수정하기" class="btn btn-custom-size xl-size btn-pronia-primary" onclick="reviews_modify(this.form)">
              <input type="button" value="목록" class="btn btn-custom-size xl-size btn-pronia-primary" onclick="location.href='product'">
           </div>
           
       </form>
   </div>
</body>
</html>