<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<% String pjName 	= "/flower"; %>
<% String imgRoute  = "/resources/product/imgs/"; %>
<fmt:formatNumber type="number" maxFractionDigits="3" value="${prod.product_price}" var="commaPrice" />
<!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>꽃물주-상품상세</title>
    <meta name="robots" content="index, follow" />
    <meta name="description" content="Pronia plant store bootstrap 5 template is an awesome website template for any home plant shop.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="<%=pjName %>/resources/assets/images/logo/tulips.png" />

    <!-- CSS
    ============================================ -->

    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/Pe-icon-7-stroke.css" />
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/Pe-icon-7-filled.css" />
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/nice-select.css">
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/magnific-popup.min.css" />
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/ion.rangeSlider.min.css" />
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

    <!-- Style CSS -->
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/style.css">
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/product.css">
    <!-- Jin's CSS for header logo-->
	<link rel="stylesheet" href="<%=pjName %>/resources/assets/css/jin_style.css">
	
	<!-- board -->
    <link rel="stylesheet" href="/flower/resources/assets/css/inquiries.css">
	<link rel="stylesheet" href="/flower/resources/assets/css/reviews.css">
    

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

        <!-- Begin Main Content Area  -->
        <main class="main-content">
            <div class="breadcrumb-area breadcrumb-height" data-bg-image="<%=pjName %>/resources/assets/images/breadcrumb/bg/1-1-1919x388.jpg">
            	<input type = 'hidden' id = 'memberid' value = '${member.member_id}'>
                <div class="container h-100">
                    <div class="row h-100">
                        <div class="col-lg-12">
                            <div class="breadcrumb-item">
                                <h2 class="breadcrumb-heading">${prod.product_name}</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-product-area section-space-top-100">
                <div class="container">
                    <div class="row">
                    	<!-- flower: 상품 사진(main, sub) div -->
                        <div class="col-lg-6">
                            <div class="single-product-img">
                                <div class="swiper-container single-product-slider">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                        	<!-- flower: 상품상세 사진(main, sub) -->
                                            <a href="<%=pjName %><%=imgRoute%>/main/${prod.prod_img_main}" class="single-img gallery-popup">
                                                <img class="img-full" src="<%=pjName %><%=imgRoute%>/main/${prod.prod_img_main}" alt="${prod.product_name} main">
                                            </a>
                                        </div>
                                        <div class="swiper-slide">
                                            <a href="<%=pjName %><%=imgRoute%>/sub/${prod.prod_imgs_sub[0]}" class="single-img gallery-popup">
                                                <img class="img-full" src="<%=pjName %><%=imgRoute%>/sub/${prod.prod_imgs_sub[0]}" alt="${prod.product_name} sub1">
                                            </a>
                                        </div>
                                        
                                        <c:if test="${not empty prod.prod_imgs_sub[1]}">
                                        <div class="swiper-slide">
                                            <a href="<%=pjName %><%=imgRoute%>/sub/${prod.prod_imgs_sub[1]}" class="single-img gallery-popup">
                                                <img class="img-full" src="<%=pjName %><%=imgRoute%>/sub/${prod.prod_imgs_sub[1]}" alt="${prod.product_name} sub2">
                                            </a>
                                        </div>
                                        </c:if>
                                        <c:if test="${not empty prod.prod_imgs_sub[2]}">
                                        <div class="swiper-slide">
                                            <a href="<%=pjName %><%=imgRoute%>/sub/${prod.prod_imgs_sub[2]}" class="single-img gallery-popup">
                                                <img class="img-full" src="<%=pjName %><%=imgRoute%>/sub/${prod.prod_imgs_sub[2]}" alt="${prod.product_name} sub3">
                                            </a>
                                        </div>
                                        </c:if>
                                        
                                        
                                    </div> <!-- <div class="swiper-wrapper"> end -->
                                </div> <!-- <div class="swiper-container single-product-slider"> end -->
                                <div class="thumbs-arrow-holder">
                                    <div class="swiper-container single-product-thumbs">
                                        <div class="swiper-wrapper">
                                            <a href="javascript:void(0);" class="swiper-slide">
                                                <img class="img-full" src="<%=pjName %><%=imgRoute%>/main/${prod.prod_img_main}" alt="Product Thumnail">
                                            </a>
                                            <a href="javascript:void(0);" class="swiper-slide">
                                                <img class="img-full" src="<%=pjName %><%=imgRoute%>/sub/${prod.prod_imgs_sub[0]}" alt="Product Thumnail">
                                            </a>
                                            <c:if test="${not empty prod.prod_imgs_sub[1]}">
                                            <a href="javascript:void(0);" class="swiper-slide">
                                                <img class="img-full" src="<%=pjName %><%=imgRoute%>/sub/${prod.prod_imgs_sub[1]}" alt="Product Thumnail">
                                            </a>
                                            </c:if>
                                            <c:if test="${not empty prod.prod_imgs_sub[2]}">
                                            <a href="javascript:void(0);" class="swiper-slide">
                                                <img class="img-full" src="<%=pjName %><%=imgRoute%>/sub/${prod.prod_imgs_sub[2]}" alt="Product Thumnail">
                                            </a>
                                            </c:if>
                                        </div>
                                        <!-- Add Arrows -->
                                        <div class=" thumbs-button-wrap d-none d-md-block">
                                            <div class="thumbs-button-prev">
                                                <i class="pe-7s-angle-left"></i>
                                            </div>
                                            <div class="thumbs-button-next">
                                                <i class="pe-7s-angle-right"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- flower: 상품사진 <div class="col-lg-6"> end -->
                        
                        <!-- flower: 상품 사진 우측 컨텐츠(장바구니담기/바로구매 버튼 등) -->
                        <div class="col-lg-6 pt-5 pt-lg-0">
                            <div class="single-product-content">
                            <form action="/flower/order/detailproductorder" id = 'productinfo' method = "post">
                                <h2 class="title" name="product_name">${prod.product_name}</h2>
                                <input type = 'hidden' name = 'product_image_file_name' value = '${prod.prod_img_list}'>
                                <input type = 'hidden' name = 'product_price' value = '${prod.product_price}'>
                                <input type = 'hidden' name = 'product_id' value = '${prod.product_id}'>
                                <input type = 'hidden' name = 'product_name' value = '${prod.product_name}'>
                                <div class="price-box">
                                    <span class="new-price" name="product_price">${commaPrice}</span>
                                </div>
                                <div class="rating-box-wrap pb-4">
                                    <div class="rating-box">
                                        <ul>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                    <div class="review-status">
                                        <a href="javascript:void(0);">( 1 Review )</a>
                                    </div>
                                </div>
                                <div class="product-category">
                                    <span class="title">개화시기:</span>
                                    <ul>
                                        <li>
                                            <a href="javascript:void(0);">${prod.blooming_season}</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="product-category">
                                    <span class="title">일조량 :</span>
                                    <ul>
                                        <li>
                                            <a href="javascript:void(0);">${prod.product_light}</a>
                                        </li>
                                    </ul>
                                </div>
                                
                                <div class="product-category product-tags">
                                    <span class="title">특징 :</span>
                                    <ul>
                                    	<c:if test="${prod.pet_friendly ne 'false'}">
                                        <li>
                                            <a href="javascript:void(0);">pet friendly</a>
                                        </li>
                                        </c:if>
                                        <c:if test="${prod.easy_care ne 'false' }">
                                        <li>
                                            <a href="javascript:void(0);">easy care</a>
                                        </li>
                                        </c:if>
                                        <c:if test="${not empty blooming_time}">
                                        <li>
                                            <a href="javascript:void(0);">blooming in night</a>
                                        </li>
                                        </c:if>
                                    </ul>
                                </div>
                                
                                <!--  상품 정보는 개화시기, 초보자용, 반려친화, 밤에피는꽃, 일조량 쓰기 -->
                                <!--
                                <p class="short-desc">Lorem ipsum dolor sit amet, consectetur adipisic elit, sed do eiusmod
                                    tempo incid ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostru
                                    exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                                    in reprehenderit in voluptate</p>
                                -->
                                
                                <ul class="quantity-with-btn">
                                    <li class="quantity">
                                        <div class="cart-plus-minus">
                                            <input class="cart-plus-minus-box" name="shopping_cart_product_quantity" id="product_quantity" value="1" type="text">
                                        </div>
                                    </li>
                                    <li class="add-to-cart">
                                    	<input type="hidden" name="product_id" id="product_id" value="${prod.product_id}">
                                        <a class="btn btn-custom-size lg-size btn-pronia-primary" id="addCart">장바구니</a>
                                    </li>
                                    
                                    <li class="add-to-cart">
                                        <a class="btn btn-custom-size lg-size btn-pronia-primary" id = 'onlyoneorder'>바로구매</a>
                                    </li>
                                    <!-- flower: 좋아요/찜/love 버튼 -->
                                    <li class="love-btn add-to-wishlist">
                                    	<div class="add-to-wishlist" id="love_content">
                                    	  <c:choose>
                                    		<c:when test="${empty love}">
                                            	<i class="pe-7s-leaf"></i>
                                            </c:when>
                                            <c:when test="${not empty love}">
                                            	<i class="pe-7f-leaf"></i>
                                            </c:when>
                                            <c:otherwise>
                                            	<i class="pe-7s-leaf"></i>
                                            </c:otherwise>
                                          </c:choose> 
                                        </div>
                                    </li>
                                </ul>
                               </form>
                                
                                    
                                    
                                    <!-- flower: 대단한 기능이지만 숨긴다 -->
                                    <!-- <li class="compare-btn-wrap">
                                        <a class="custom-circle-btn" href="compare.html">
                                            <i class="pe-7s-refresh-2"></i>
                                        </a>
                                    </li> -->
                                
                                
                                <!-- flower: 서비스 안내 이미지 → 일조량을 이미지로 대체할지 결정요망(일단 주석처리) -->
                                <!--
                                <ul class="service-item-wrap">
                                    <li class="service-item">
                                        <div class="service-img">
                                            <img src="<%=pjName %>/resources/assets/images/shipping/icon/car.png" alt="Shipping Icon">
                                        </div>
                                        <div class="service-content">
                                            <span class="title">Free <br> Shipping</span>
                                        </div>
                                    </li>
                                    <li class="service-item">
                                        <div class="service-img">
                                            <img src="<%=pjName %>/resources/assets/images/shipping/icon/card.png" alt="Shipping Icon">
                                        </div>
                                        <div class="service-content">
                                            <span class="title">Safe <br> Payment</span>
                                        </div>
                                    </li>
                                    <li class="service-item">
                                        <div class="service-img">
                                            <img src="<%=pjName %>/resources/assets/images/shipping/icon/service.png" alt="Shipping Icon">
                                        </div>
                                        <div class="service-content">
                                            <span class="title">Safe <br> Payment</span>
                                        </div>
                                    </li>
                                </ul>
                                --><!-- flower: free shipping 등의 이미지 end -->
                                
                                

                            </div> <!-- flower: 상품 개괄 <div class="single-product-content"> end -->
                        </div> <!-- flower: 상품 개괄 <div class="col-lg-6 pt-5 pt-lg-0"> end -->
                    </div> <!-- flower: 상품 상세 상단 <div class="row"> end -->
                </div> <!-- flower: 상품 상세 상단 <div class="row"> end -->
            </div> <!-- flower: 상품 상세 상단 <div class="container"> end -->
            
            
             
            <!-- flower: 상품 상세 하단 -->
            <div class="product-tab-area section-space-top-100">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                        
                            <ul class="nav product-tab-nav tab-style-2 pt-0" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <a class="active tab-btn" id="information-tab" data-bs-toggle="tab" href="#information" role="tab" aria-controls="information" aria-selected="false">
                                        상품정보
                                    </a>
                                </li>
                                
                                <li class="nav-item" role="presentation">
                                    <a class="tab-btn" id="reviews-tab" data-bs-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false">
                                        리뷰
                                    </a>
                                </li>

                                <li class="nav-item" role="presentation">
                                    <a class="tab-btn" id="inquiries-tab" data-bs-toggle="tab" href="#inquiries" role="tab" aria-controls="inquiries" aria-selected="false">
                                        문의
                                    </a>
                                </li>
                                
                                <li class="nav-item" role="presentation">
                                    <a class="tab-btn" id="description-tab" data-bs-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="true">
                                        QnA
                                    </a>
                                </li>

                            </ul>
                            
                            <!-- 상품정보 -->
                            <div class="tab-content product-tab-content">
                                <div class="tab-pane fade show active" id="information" role="tabpanel" aria-labelledby="information-tab">
                                    <div class="product-information-body">
                                        <h4 class="title">Shipping</h4>
                                        <p class="short-desc mb-4">The item will be shipped from China. So it need 15-20 days to
                                            deliver. Our product is good with reasonable price and we believe you will worth it.
                                            So please wait for it patiently! Thanks.Any question please kindly to contact us and
                                            we promise to work hard to help you to solve the problem</p>
                                        <h4 class="title">About return request</h4>
                                        <p class="short-desc mb-4">If you don't need the item with worry, you can contact us
                                            then we will help you to solve the problem, so please close the return request!
                                            Thanks</p>
                                        <h4 class="title">Guarantee</h4>
                                        <p class="short-desc mb-0">If it is the quality question, we will resend or refund to
                                            you; If you receive damaged or wrong items, please contact us and attach some
                                            pictures about product, we will exchange a new correct item to you after the
                                            confirmation.</p>
                                    </div>
                                </div>
                                
                                <!-- 배송/교환/환불/판매자정보 -->
                                <div class="tab-pane fade" id="description" role="tabpanel" aria-labelledby="description-tab">
                                    <div class="product-description-body">
                                    	<h3>QnA</h3>
                                    	Notice<br>
                                    	[구매 전 확인 부탁드립니다]
                                    	<hr>
                                    	상품정보<br>
                                    	배송정보<br>
                                    	교환/반품<br>
                                    	
                                    	<hr>
                                    	<h3>판매자 정보</h3>
                                        <p class="short-desc mb-0"></p>                                   
                                    </div>
                                </div>
                                
                                 <!-- 리뷰게시판 -->
                                <div class="tab-pane fade" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
                                    <div class="product-review-body">
                                    
                                    <!-- 리뷰쓰기 -->
                                    <div class="inquiries_writing">
	                                    <input class="i_btn_writing" type="button" value="리뷰쓰기" onclick="insert_reviews_form();">
                                    </div>

                                    
                                    <!-- Data없는경우 -->
                                	<c:if test="${ empty reviews_list }">
                                		<tr>
                                			<td colspan="5">
                                				<div id="i_empty_message">게시물이 없습니다</div>
                                			</td>
                                		</tr>
                                	</c:if>
									
									
									<!-- Data있는 경우 -->
                                    <c:forEach var="vo" items="${ reviews_list }">
										<div class="blog-comment mt-0">
		                                    <h4 class="heading">리뷰</h4>
			                                    <div class="blog-comment-item relpy-item">
				                                    <div class="blog-comment-img">
				                                    	<img src="/flower/resources/assets/images/blog/avatar/1-1-120x120.png" alt="User Image">
				                                    </div>
				                                    <div class="blog-comment-content">
					                                    <div class="user-meta">
					                                   			<h2 class="user-name"><a href="reviews?reviews_id=${ vo.reviews_id }">${ vo.reviews_title }</a></h2>
					                                    	<span class="date">${ vo.reviews_register_date }</span>
					                                    </div>
				                                    		<p class="user-comment">${ vo.reviews_content }</p>
				                                    </div>
			                                    </div>
	                                    </div>
	                                    <hr>
									</c:forEach>
										
										<div class="r_page_menu">
											${ revi_pageMenu }
										</div>
									
                                	</div>
                                </div>
  
                                <div class="tab-pane fade" id="inquiries" role="tabpanel" aria-labelledby="reviews-tab">
                                    <div class="product-review-body">
                                    
                                    <!-- 문의게시판 -->	
                                    <div id="inquiries_content">                                
                                    	
                                    	<div id="i_dox">
                                    		<h2 id="inquiries">문의게시판</h2>
                                    		
                                    		<!-- 문의하기 -->
                                    		<div class="inquiries_writing">
	                                    		<input class="i_btn_writing" type="button" value="문의하기" onclick="insert_form();">
                                    		</div>
                                  	
                                    		 
                                    		<div class="inquiries_info">
                                    			<table class="table">
                                    				<tr class="inquiries_table">
                                    					<th class="i_list">번호</th>
                                    					<th class="i_title">제목</th>
                                    					<th class="i_list">답변여부</th>
                                    					<th class="i_list">작성일자</th>
                                    				</tr>
                                    				
                                    				<!-- Data없는경우 -->
                                    				<c:if test="${ empty list }">
                                    					<tr>
                                    						<td colspan="5">
                                    							<div id="i_empty_message">게시물이 없습니다</div>
                                    						</td>
                                    					</tr>
                                    				</c:if>
                                    				
                                    				<!-- Data있는 경우 -->
                                    				<c:forEach var="vo" items="${ list }" varStatus="i">
                                    					<tr>
                                    						<td class="i_list_on">${ i.count }</td>
                                    						<td class="i_list_on"><a href="view?inquiries_id=${ vo.inquiries_id }">${ vo.inquiries_title }</a></td>
                                    						
                                    						<c:choose>
                                    							<c:when test="${ vo.inquiries_answer_yn == 1 }">
                                    								<td class="i_list_on">Y</td>
                                    							</c:when>
                                    							<c:otherwise>
                                    								<td class="i_list_on">N</td>
                                    							</c:otherwise>
                                    						</c:choose>
                                    						<td class="i_list_on">${ vo.inquiries_register_date }</td>
                                    					</tr>
                                    					
                                    					
                                    					
                                    				</c:forEach>
                                    			</table>
                                    			
                             					
                                    			
                                    		</div>
                                    		
                                    			<div class="r_page_menu">
													${ pageMenu }
												</div>
                                    	</div>
                                    </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- flower: 상품 상세 하단 <div class="product-tab-area section-space-top-100"> end -->


            <!-- flower: related products → (일단) 숨긴다 -->
            <!-- Begin Product Area -->
            <!--
            <div class="product-area section-space-y-axis-90"> 
                <div class="container">
                    <div class="row">
                        <div class="section-title-wrap without-tab">
                            <h2 class="section-title">Related Products</h2>
                            <p class="section-desc">Contrary to popular belief, Lorem Ipsum is not simply random text. It has
                                roots in a piece of classical Latin literature
                            </p>
                        </div>
                        <div class="col-lg-12">
                            <div class="swiper-container product-slider">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide product-item">
                                        <div class="product-img">
                                            <a href="single-product-variable.html">
                                                <img class="primary-img" src="<%=pjName %>/resources/assets/images/product/medium-size/1-9-270x300.jpg" alt="Product Images">
                                                <img class="secondary-img" src="<%=pjName %>/resources/assets/images/product/medium-size/1-10-270x300.jpg" alt="Product Images">
                                            </a>
                                            <div class="product-add-action">
                                                <ul>
                                                    <li>
                                                        <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-like"></i>
                                                        </a>
                                                    </li>
                                                    <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                        <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-look"></i>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-cart"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <a class="product-name" href="single-product-variable.html">American Marigold</a>
                                            <div class="price-box pb-1">
                                                <span class="new-price">$23.45</span>
                                            </div>
                                            <div class="rating-box">
                                                <ul>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide product-item">
                                        <div class="product-img">
                                            <a href="single-product-variable.html">
                                                <img class="primary-img" src="<%=pjName %>/resources/assets/images/product/medium-size/1-10-270x300.jpg" alt="Product Images">
                                                <img class="secondary-img" src="<%=pjName %>/resources/assets/images/product/medium-size/1-11-270x300.jpg" alt="Product Images">
                                            </a>
                                            <div class="product-add-action">
                                                <ul>
                                                    <li>
                                                        <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-like"></i>
                                                        </a>
                                                    </li>
                                                    <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                        <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-look"></i>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-cart"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <a class="product-name" href="single-product-variable.html">Black Eyed Susan</a>
                                            <div class="price-box pb-1">
                                                <span class="new-price">$25.45</span>
                                            </div>
                                            <div class="rating-box">
                                                <ul>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide product-item">
                                        <div class="product-img">
                                            <a href="single-product-variable.html">
                                                <img class="primary-img" src="<%=pjName %>/resources/assets/images/product/medium-size/1-11-270x300.jpg" alt="Product Images">
                                                <img class="secondary-img" src="<%=pjName %>/resources/assets/images/product/medium-size/1-4-270x300.jpg" alt="Product Images">
                                            </a>
                                            <div class="product-add-action">
                                                <ul>
                                                    <li>
                                                        <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-like"></i>
                                                        </a>
                                                    </li>
                                                    <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                        <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-look"></i>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-cart"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <a class="product-name" href="single-product-variable.html">Bleeding Heart</a>
                                            <div class="price-box pb-1">
                                                <span class="new-price">$30.45</span>
                                            </div>
                                            <div class="rating-box">
                                                <ul>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide product-item">
                                        <div class="product-img">
                                            <a href="single-product-variable.html">
                                                <img class="primary-img" src="<%=pjName %>/resources/assets/images/product/medium-size/1-7-270x300.jpg" alt="Product Images">
                                                <img class="secondary-img" src="<%=pjName %>/resources/assets/images/product/medium-size/1-8-270x300.jpg" alt="Product Images">
                                            </a>
                                            <div class="product-add-action">
                                                <ul>
                                                    <li>
                                                        <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-like"></i>
                                                        </a>
                                                    </li>
                                                    <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                        <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-look"></i>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-cart"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <a class="product-name" href="single-product-variable.html">Bloody Cranesbill</a>
                                            <div class="price-box pb-1">
                                                <span class="new-price">$45.00</span>
                                            </div>
                                            <div class="rating-box">
                                                <ul>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Product Area End Here -->

        </main>
	      
        <!-- Main Content Area End Here  -->

        <!-- Begin Modal Area -->
        <div class="modal quick-view-modal fade" id="quickModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="quickModal" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" data-tippy="Close" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="modal-wrap row">
                            <div class="col-lg-6">
                                <div class="modal-img">
                                    <div class="swiper-container modal-slider">
                                        <div class="swiper-wrapper">
                                            <div class="swiper-slide">
                                                <a href="#" class="single-img">
                                                    <img class="img-full" src="<%=pjName %>/resources/assets/images/product/large-size/1-1-570x633.jpg" alt="Product Image">
                                                </a>
                                            </div>
                                            <div class="swiper-slide">
                                                <a href="#" class="single-img">
                                                    <img class="img-full" src="<%=pjName %>/resources/assets/images/product/large-size/1-2-570x633.jpg" alt="Product Image">
                                                </a>
                                            </div>
                                            <div class="swiper-slide">
                                                <a href="#" class="single-img">
                                                    <img class="img-full" src="<%=pjName %>/resources/assets/images/product/large-size/1-3-570x633.jpg" alt="Product Image">
                                                </a>
                                            </div>
                                            <div class="swiper-slide">
                                                <a href="#" class="single-img">
                                                    <img class="img-full" src="<%=pjName %>/resources/assets/images/product/large-size/1-4-570x633.jpg" alt="Product Image">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 pt-5 pt-lg-0">
                                <div class="single-product-content">
                                    <h2 class="title">American Marigold</h2>
                                    <div class="price-box">
                                        <span class="new-price">$23.45</span>
                                    </div>
                                    <div class="rating-box-wrap">
                                        <div class="rating-box">
                                            <ul>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                            </ul>
                                        </div>
                                        <div class="review-status">
                                            <a href="#">( 1 Review )</a>
                                        </div>
                                    </div>
                                    <div class="selector-wrap color-option">
                                        <span class="selector-title border-bottom-0">Color</span>
                                        <select class="nice-select wide border-bottom-0 rounded-0">
                                            <option value="default">Black & White</option>
                                            <option value="blue">Blue</option>
                                            <option value="green">Green</option>
                                            <option value="red">Red</option>
                                        </select>
                                    </div>
                                    <div class="selector-wrap size-option">
                                        <span class="selector-title">Size</span>
                                        <select class="nice-select wide rounded-0">
                                            <option value="medium">Medium Size & Poot</option>
                                            <option value="large">Large Size With Poot</option>
                                            <option value="small">Small Size With Poot</option>
                                        </select>
                                    </div>
                                    <p class="short-desc">Lorem ipsum dolor sit amet, consectetur adipisic elit, sed do eiusmod
                                        tempo incid ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostru
                                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
                                        dolor
                                        in reprehenderit in voluptate</p>
                                    <ul class="quantity-with-btn">
                                        <li class="quantity">
                                            <div class="cart-plus-minus">
                                                <input class="cart-plus-minus-box" value="1" type="text">
                                            </div>
                                        </li>
                                        <li class="add-to-cart">
                                            <a class="btn btn-custom-size lg-size btn-pronia-primary" href="cart.html">Add to
                                                cart</a>
                                        </li>
                                        <li class="wishlist-btn-wrap">
                                            <a class="custom-circle-btn" href="wishlist.html">
                                                <i class="pe-7s-like"></i>
                                            </a>
                                        </li>
                                        <li class="compare-btn-wrap">
                                            <a class="custom-circle-btn" href="compare.html">
                                                <i class="pe-7s-refresh-2"></i>
                                            </a>
                                        </li>
                                    </ul>
                                    <ul class="service-item-wrap pb-0">
                                        <li class="service-item">
                                            <div class="service-img">
                                                <img src="<%=pjName %>/resources/assets/images/shipping/icon/car.png" alt="Shipping Icon">
                                            </div>
                                            <div class="service-content">
                                                <span class="title">Free <br> Shipping</span>
                                            </div>
                                        </li>
                                        <li class="service-item">
                                            <div class="service-img">
                                                <img src="<%=pjName %>/resources/assets/images/shipping/icon/card.png" alt="Shipping Icon">
                                            </div>
                                            <div class="service-content">
                                                <span class="title">Safe <br> Payment</span>
                                            </div>
                                        </li>
                                        <li class="service-item">
                                            <div class="service-img">
                                                <img src="<%=pjName %>/resources/assets/images/shipping/icon/service.png" alt="Shipping Icon">
                                            </div>
                                            <div class="service-content">
                                                <span class="title">Safe <br> Payment</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal Area End Here -->

        <!-- Begin Scroll To Top -->
        <a class="scroll-to-top" href="">
            <i class="fa fa-angle-double-up"></i>
        </a>
        <!-- Scroll To Top End Here -->

    </div>
    <!--page-content JS (flower: 추후 footer에 담아야 할..듯?)-->
    <script src="<%=pjName %>/resources/assets/js/product/product-content.js"></script>
<%@include file="/flower_footer.jsp" %>