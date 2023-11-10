<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
   
   <!-- 로그인 안된경우 -->
   <c:if test="${ empty member }">
   	<input type="hidden" value="로그인" class="loginCheck">
   </c:if>
   <!-- 로그인 된경우 -->
   <c:if test="${ not empty member }">
   	<input type="hidden" value="로그아웃" class="loginCheck">
   </c:if>
   
    <h2 class="heading">리뷰</h2>
       <form class="feedback-form" id="send_form">
               <div class="form-field me-md-30 mb-30 mb-md-0">
			   	   제목 : ${ vo.reviews_title }
               </div>
               
               <div class="form-field me-md-30 mb-30 mb-md-0">
                   내용 : ${ vo.reviews_content }
               </div>
               
               <div class="form-field me-md-30 mb-30 mb-md-0">
                   답변내용 : ${ vo.reports_contents }                   
               </div>

	           <div class="button-wrap pt-5" style="margin-top: 10px;">
		           <c:if test="${ (vo.member_id eq member.member_id) }">
		              <input type="button" value="수정" class="btn btn-custom-size xl-size btn-pronia-primary" onclick="reviews_form('${ vo.reviews_id }');">
		              <input type="button" value="삭제" class="btn btn-custom-size xl-size btn-pronia-primary" onclick="reviews_del('${vo.reviews_id}');">
		           </c:if>
		           
	              <input type="button" value="목록" class="btn btn-custom-size xl-size btn-pronia-primary" onclick="location.href='product'">
	           </div>
       </form>
   </div>
</body>
</html>