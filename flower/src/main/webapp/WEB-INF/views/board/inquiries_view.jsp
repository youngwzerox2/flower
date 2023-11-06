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
               <div class="form-field me-md-30 mb-30 mb-md-0">
			   	   제목 : ${ vo.inquiries_title }
               </div>
               
               <div class="form-field me-md-30 mb-30 mb-md-0">
                   내용 : ${ vo.inquiries_cotent }
               </div>
               
               <div class="form-field me-md-30 mb-30 mb-md-0">
                   답변내용 : ${ vo.inquiries_answer_content }
               </div>

	           <div class="button-wrap pt-5" style="margin-top: 10px;">
		           <c:if test="${ vo.member_id eq member.member_id }">
		              <input type="button" value="수정" class="btn btn-custom-size xl-size btn-pronia-primary" onclick="modify_form('${ vo.inquiries_id }');">
		              <input type="button" value="삭제" class="btn btn-custom-size xl-size btn-pronia-primary" onclick="del('${vo.inquiries_id}');">
		           </c:if>
		           
	              <input type="button" value="목록" class="btn btn-custom-size xl-size btn-pronia-primary" onclick="location.href='product'">
	           </div>
	           <!-- 
	           <div>
			   	  <textarea id="" rows="5" cols=""></textarea>
			   	  <input class="btn btn-primary btn-sm" type="button" value="답변" onclick="add_comment();">
			   </div>
	            -->
       </form>
   </div>
</body>
</html>