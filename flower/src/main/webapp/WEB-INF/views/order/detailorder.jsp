<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String pjName = "/flower"; %>
    
<!DOCTYPE html>
<html lang="zxx">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Pronia - Checkout</title>
    <meta name="robots" content="index, follow" />
    <meta name="description" content="Pronia plant store bootstrap 5 template is an awesome website template for any home plant shop.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="/flower/resources/assets/images/favicon.ico" />

    <!-- CSS
    ============================================ -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="/flower/resources/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/flower/resources/assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="/flower/resources/assets/css/Pe-icon-7-stroke.css" />
    <link rel="stylesheet" href="/flower/resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="/flower/resources/assets/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="/flower/resources/assets/css/nice-select.css">
    <link rel="stylesheet" href="/flower/resources/assets/css/magnific-popup.min.css" />
    <link rel="stylesheet" href="/flower/resources/assets/css/ion.rangeSlider.min.css" />

    <!-- Style CSS -->
    <link rel="stylesheet" href="/flower/resources/assets/css/style.css">
    
     <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
     <script src="https://cdn.iamport.kr/v1/iamport.js"></script>

</head>

<body>
    <div class="preloader-activate preloader-active open_tm_preloader">
        <div class="preloader-area-wrap">
            <div class="spinner d-flex justify-content-center align-items-center h-100">
                <div class="bounce1"></div>
                <div class="bounce2"></div>
                <div class="bounce3"></div>
            </div>
        </div>
    </div>
    <div class="main-wrapper">
  <%@ include file="/flower_header.jsp" %>
       
        <!-- Begin Main Content Area -->
        <main class="main-content">
            <div class="breadcrumb-area breadcrumb-height" data-bg-image="/flower/resources/assets/images/breadcrumb/bg/1-1-1919x388.jpg">
                <div class="container h-100">
                    <div class="row h-100">
                        <div class="col-lg-12">
                            <div class="breadcrumb-item">
                                <h2 class="breadcrumb-heading">Checkout Page</h2>
                                <ul>
                                    <li>
                                        <a href="index.html">Home</a>
                                    </li>
                                    <li>Checkout</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="checkout-area section-space-y-axis-100">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-12">
                                <div class="checkbox-form">
                                	<h3>주문 상품 정보</h3>
                                	<div class = 'cart_list'>
                                	<ul class = 'cart_contents'>
                                		<li class = cart_goods>
                                			<div class = 'block block1'>
                                				<ul>
                                					<li class = 'img_area'>
                                						<a href = '#'>
                                							<img  class = 'goods_thumb' src = '/flower/resources/product/imgs/list/1_list_1.jpg' class = 'goods_thumb'>
                                						</a>
                                					</li>
                                					<li class = 'option_area'>
                                						<div class = 'goods_name'>
                                							<a href = '#'>야생화</a>
                                						</div>
                                						<div>
                                							<span>
                                								수량
                                							</span>
                                							1 개
                                							<span>
                                								15000
                                							</span>
                                							원
                                						</div>
                                					</li>
                                				</ul>
                                			</div>
                                		</li>
                                	</ul>
                                	</div>
                                    <h3>주문자</h3>
                                    <ul class = 'orderer'>
                                      	<li>
                                      	 	<ul class = 'list_02'>
                                      	 		<li>
                                      	 			<span class = 'label'><span>주문자명</span></span>
                                      	 			<input type = 'text' style = 'width : 170px;' placeholder = '주문자 이름' required>
                                      	 		</li>
                                      	 		<li>
                                      	 			<span class = 'label'><span>휴대폰번호</span></span>
                                      	 			<input type = 'text' style = 'width : 170px;' placeholder = '-포함' required>
                                      	 		</li>
                                      	 		<li>
                                      	 			<span class = 'label'><span>이메일</span></span>
                                      	 			${member.member_email}
                                      	 		</li>
                                      	 	</ul>
                                      	</li>
                                    </ul>
                                    <h3>배송지</h3>
                                    <ul id = 'defaultaddress'>
                                      	<li>
                                      	 	<ul class = 'list_02'>
                                      	 		<li>
                                      	 			<span class = 'label'><span>이름</span></span>
                                      	 			<label>박종건</label>
                                      	 		</li>
                                      	 		<li>
                                      	 			<span class = 'label'><span>주소</span></span>
                                      	 			<label><span>(22352)</span> <span>경기도 고양시 덕양구</span> <span>얄리얄리 얄랴성가리</span></label>
                                      	 		</li>
                                      	 		<li>
                                      	 			<span class = 'label'><span>휴대폰번호</span></span>
                                      	 			<label>01043937941</label>
                                      	 		</li>
                                      	 	</ul>
                                      	</li>
                                    </ul>
                                   </div>
                       		 </div>
                        <div class="col-lg-6 col-12">
                        	<div>
                        		오른쪽내용
                        	</div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!-- Main Content Area End Here -->

        <!-- Begin Scroll To Top -->
        <a class="scroll-to-top" href="">
            <i class="fa fa-angle-double-up"></i>
        </a>
        <!-- Scroll To Top End Here -->

    </div>
    
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="/flower/resources/assets/js/order/order.js"></script>
    
    <%@include file="/flower_footer.jsp" %>