<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<% String pjName = "/flower"; %>
<!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>꽃을 내 곁에, 꽃사수</title>
    
    <meta name="robots" content="index, follow" />
    <meta name="description" content="Pronia plant store bootstrap 5 template is an awesome website template for any home plant shop.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="<%=pjName %>/resources/assets/images/logo/tulips.png" />
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@300&family=Ubuntu:wght@300&display=swap" rel="stylesheet">
    <!-- CSS
    ============================================ -->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/Pe-icon-7-stroke.css" />
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/Pe-icon-7-filled.css" />
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/nice-select.css">
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/magnific-popup.min.css" />
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/ion.rangeSlider.min.css" />

    <!-- Style CSS -->
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/style.css">
    <!-- Jin's CSS for main, header, footer, product-content -->
	<link rel="stylesheet" href="<%=pjName %>/resources/assets/css/jin_style.css">

</head>
<body>
    <div class="main-wrapper">
    <%@ include file="flower_header.jsp" %>
    
        <!-- Begin Slider Area -->
        <div class="slider-area">

            <!-- Main Slider -->
            <div class="swiper-container main-slider-2 swiper-arrow with-bg_white">
                <div class="swiper-wrapper">
                    <div class="swiper-slide animation-style-02">
                        <div class="slide-inner style-2" data-bg-image="<%=pjName %>/resources/assets/images/slider/bg/2-1.jpg">
                            <div class="slide-content text-black">
                                <h2 class="title">나의 작은 꽃</h2>
                                <p class="short-desc">지지 말고 활짝 피렴</p>
                                <div class="btn-wrap">
                                    <a class="btn btn-custom-size xl-size btn-pronia-primary" href="">Discover Now</a>
                                </div>
                            </div>
                            <div class="slide-img">
                                <img src="<%=pjName %>/resources/assets/images/slider/slide-img/flower_main1.jpg" alt="Slide Image">
                                <div class="slide-count">
                                    <span class="data-count" data-count="01">
                                <span class="forward-slash">/</span>
                                    <span>03</span>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide animation-style-02">
                        <div class="slide-inner style-2" data-bg-image="<%=pjName %>/resources/assets/images/slider/bg/bg3-2.jpg">
                            <div class="slide-content text-black">
                                <h2 class="title">그대 모습은 <br> 보랏빛처럼</h2>
                                <p class="short-desc">살며시 다가왔지</p>
                                <div class="btn-wrap">
                                    <a class="btn btn-custom-size xl-size btn-pronia-primary" href="">Discover Now</a>
                                </div>
                            </div>
                            <div class="slide-img">
                                <img src="<%=pjName %>/resources/assets/images/slider/slide-img/flower_main2.jpg" alt="Slide Image">
                                <div class="slide-count">
                                    <span class="data-count" data-count="02">
                                <span class="forward-slash">/</span>
                                    <span>03</span>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide animation-style-02">
                        <div class="slide-inner style-2" data-bg-image="<%=pjName %>/resources/assets/images/slider/bg/bg3-3.jpg">
                            <div class="slide-content text-black">
                                <h2 class="title">가을엔 <br> 역시</h2>
                                <p class="short-desc">별헤는 밤이면 들려오는 그대의 음성</p>
                                <div class="btn-wrap">
                                    <a class="btn btn-custom-size xl-size btn-pronia-primary" href="">Discover Now</a>
                                </div>
                            </div>
                            <div class="slide-img">
                                <img src="<%=pjName %>/resources/assets/images/slider/slide-img/flower_main4.jpg" alt="Slide Image">
                                <div class="slide-count">
                                    <span class="data-count" data-count="03">
                                <span class="forward-slash">/</span>
                                    <span>03</span>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Add Arrows -->
                <div class="slide-button-wrap">
                    <div class="slide-button-prev">
                        <i class="pe-7s-angle-left"></i>
                    </div>
                    <div class="slide-button-next">
                        <i class="pe-7s-angle-right"></i>
                    </div>
                </div>
            </div>

        </div>
        <!-- Slider Area End Here -->

		<!--  flower: 계절별 카테고리 -->
        <!-- Begin Product Area -->
        <div class="product-area section-space-top-100 section-space-bottom-90">
            <div class="container">
                <div class="row">
                    <div class="section-title-wrap without-tab">
                        <h2 class="section-title">Season</h2>
                        <!-- 
                        <p class="section-desc">We have special categories for those who love flower but know nothing.
                        </p> -->
                    </div>
                    <div class="col-lg-12">
                        <div class="swiper-container product-slider">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide product-item">
                                    <div class="product-img">
                                        <a href="<%=pjName%>/product/product?product_type=spring">
                                            <img class="primary-img" src="<%=pjName %>/resources/assets/images/product/medium-size/flower_spring.jpg" alt="Blooming in Spring">
                                            <!-- <img class="secondary-img" src="<%=pjName %>/resources/assets/images/product/medium-size/1-10-270x300.jpg" alt="Product Images">  -->
                                        </a>
                                    </div>
                                    <div class="product-content">
                                        <a class="product-name main-product-season-jin" href="<%=pjName%>/product/product?product_type=spring">봄부터 피는 꽃</a>
                                    </div>
                                </div>
                                <div class="swiper-slide product-item">
                                    <div class="product-img">
                                        <a href="<%=pjName%>/product/product?product_type=summer">
                                            <img class="primary-img" src="<%=pjName %>/resources/assets/images/product/medium-size/flower_summer.jpg" alt="Blooming in Summer">
                                            <!--  <img class="secondary-img" src="<%=pjName %>/resources/assets/images/product/medium-size/1-11-270x300.jpg" alt="Product Images"> -->
                                        </a>
                                    </div>
                                    <div class="product-content">
                                        <a class="product-name main-product-season-jin" href="<%=pjName%>/product/product?product_type=summer">여름부터 피는 꽃</a>
                                    </div>
                                </div>
                                <div class="swiper-slide product-item">
                                    <div class="product-img">
                                        <a href="<%=pjName%>/product/product?product_type=fall">
                                            <img class="primary-img" src="<%=pjName %>/resources/assets/images/product/medium-size/flower_autumn.jpg" alt="Blooming in Autumn">
                                            <!--  <img class="secondary-img" src="<%=pjName %>/resources/assets/images/product/medium-size/1-4-270x300.jpg" alt="Product Images"> -->
                                        </a>
                                    </div>
                                    <div class="product-content">
                                        <a class="product-name main-product-season-jin" href="<%=pjName%>/product/product?product_type=fall">가을에 피는 꽃</a>
                                    </div>
                                </div>
                                <div class="swiper-slide product-item">
                                    <div class="product-img">
                                        <a href="<%=pjName%>/product/product?product_type=winter">
                                            <img class="primary-img" src="<%=pjName %>/resources/assets/images/product/medium-size/flower_winter.jpg" alt="Blooming in Winter">
                                            <!-- <img class="secondary-img" src="<%=pjName %>/resources/assets/images/product/medium-size/1-8-270x300.jpg" alt="Product Images"> -->
                                        </a>
                                    </div>
                                    <div class="product-content">
                                        <a class="product-name main-product-season-jin" href="<%=pjName%>/product/product?product_type=winter">겨울에도 피어요</a>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Product Area End Here -->

		<!--  flower: 특별한 카테고리 -->
        <!-- Begin Product Area -->
        <div class="product-area section-space-top-100 section-space-bottom-90">
            <div class="container">
                <div class="section-title-wrap">
                    <h2 class="section-title mb-0">Special Categories</h2>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <ul class="nav product-tab-nav tab-style-1" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <a class="active" id="featured-tab" data-bs-toggle="tab" href="#featured" role="tab" aria-controls="featured" aria-selected="true">
                                    초보자용꽃
                                </a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a id="bestseller-tab" data-bs-toggle="tab" href="#bestseller" role="tab" aria-controls="bestseller" aria-selected="false">
                                    반려동물안심꽃
                                </a>
                            </li>
                           <!--  <li class="nav-item" role="presentation">
                                <a id="latest-tab" data-bs-toggle="tab" href="#latest" role="tab" aria-controls="latest" aria-selected="false">
                                    밤에피는꽃
                                </a>
                            </li> -->
                        </ul>
                        <div class="tab-content" id="myTabContent">
                        	<!-- flower: 초보자용꽃 이미지로 경로 설정 요망-->
                            <div class="tab-pane fade show active" id="featured" role="tabpanel" aria-labelledby="featured-tab">
                                <div class="product-item-wrap row">
                                    <div class="col-xl-3 col-md-4 col-sm-6">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="<%=pjName%>/product/product-content?product_id=1">
                                                    <img class="primary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/1_list_1.jpg" alt="유카">
                                                    <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/1_list_2.jpg" alt="유카(화분)">
                                                </a>
                                                <div class="product-add-action">
                                                    <ul>
                                                        <li>
                                                            <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-like"></i>
                                                            </a>
                                                        </li>
                                                        <!-- flower: 퀵뷰 숨긴다 -->
                                                        <!-- <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                            <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-look"></i>
                                                            </a>
                                                        </li>-->
                                                        
                                                        <li>
                                                            <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-cart"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <a class="product-name main-product-title-jin" href="<%=pjName%>/product/product-content?product_id=1">유카</a>
                                                <div class="price-box pb-1">
                                                    <span class="new-price">19,000원</span>
                                                </div>
                                                <!-- flower: 리뷰(리뷰 완성 후 사용요망) -->
                                                <!-- <div class="rating-box">
                                                    <ul>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                    </ul>
                                                </div>-->
                                            </div> <!-- <div class="product-content"> end -->
                                        </div> <!--  <div class="product-item"> end -->
                                    </div> <!--  <div class="col-xl-3 col-md-4 col-sm-6"> end -->
                                    <div class="col-xl-3 col-md-4 col-sm-6">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="<%=pjName%>/product/product-content?product_id=2">
                                                    <img class="primary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/2_list_1.jpg" alt="호스타">
                                                    <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/2_list_2.jpg" alt="호스타(화분)">
                                                </a>
                                                <div class="product-add-action">
                                                    <ul>
                                                        <li>
                                                            <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-like"></i>
                                                            </a>
                                                        </li>
                                                        <!-- flower: 퀵뷰 숨긴다 -->
                                                        <!-- <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                            <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-look"></i>
                                                            </a>
                                                        </li>-->
                                                        
                                                        <li>
                                                            <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-cart"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <a class="product-name main-product-title-jin" href="<%=pjName%>/product/product-content?product_id=2">호스타</a>
                                                <div class="price-box pb-1">
                                                    <span class="new-price">13,000원</span>
                                                </div>
                                                <!-- flower: 리뷰(리뷰 완성 후 사용요망) -->
                                                <!-- <div class="rating-box">
                                                    <ul>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                    </ul>
                                                </div>-->
                                            </div> <!-- <div class="product-content"> end -->
                                        </div> <!--  <div class="product-item"> end -->
                                    </div> <!--  <div class="col-xl-3 col-md-4 col-sm-6"> end -->
                                    <div class="col-xl-3 col-md-4 col-sm-6">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="<%=pjName%>/product/product-content?product_id=3">
                                                    <img class="primary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/3_list_1.jpg" alt="설유화">
                                                    <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/3_list_2.jpg" alt="설유화(화분)">
                                                </a>
                                                <div class="product-add-action">
                                                    <ul>
                                                        <li>
                                                            <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-like"></i>
                                                            </a>
                                                        </li>
                                                        <!-- flower: 퀵뷰 숨긴다 -->
                                                        <!-- <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                            <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-look"></i>
                                                            </a>
                                                        </li>-->
                                                        
                                                        <li>
                                                            <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-cart"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <a class="product-name main-product-title-jin" href="<%=pjName%>/product/product-content?product_id=3">설유화</a>
                                                <div class="price-box pb-1">
                                                    <span class="new-price">4,800원</span>
                                                </div>
                                                <!-- flower: 리뷰(리뷰 완성 후 사용요망) -->
                                                <!-- <div class="rating-box">
                                                    <ul>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                    </ul>
                                                </div>-->
                                            </div> <!-- <div class="product-content"> end -->
                                        </div> <!--  <div class="product-item"> end -->
                                    </div> <!--  <div class="col-xl-3 col-md-4 col-sm-6"> end -->
                                    <div class="col-xl-3 col-md-4 col-sm-6">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="<%=pjName%>/product/product-content?product_id=34">
                                                    <img class="primary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/34_list_1.jpg" alt="안투리움(코랄)">
                                                    <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/34_list_2.jpg" alt="안투리움(코랄)(화분)">
                                                </a>
                                                <div class="product-add-action">
                                                    <ul>
                                                        <li>
                                                            <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-like"></i>
                                                            </a>
                                                        </li>
                                                        <!-- flower: 퀵뷰 숨긴다 -->
                                                        <!-- <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                            <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-look"></i>
                                                            </a>
                                                        </li>-->
                                                        
                                                        <li>
                                                            <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-cart"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <a class="product-name main-product-title-jin" href="<%=pjName%>/product/product-content?product_id=34">안투리움(코랄)</a>
                                                <div class="price-box pb-1">
                                                    <span class="new-price">14,000원</span>
                                                </div>
                                                <!-- flower: 리뷰(리뷰 완성 후 사용요망) -->
                                                <!-- <div class="rating-box">
                                                    <ul>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                    </ul>
                                                </div>-->
                                            </div> <!-- <div class="product-content"> end -->
                                        </div> <!--  <div class="product-item"> end -->
                                    </div> <!--  <div class="col-xl-3 col-md-4 col-sm-6"> end -->

                                    <div class="col-xl-3 col-md-4 col-sm-6 pt-4">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="<%=pjName%>/product/product-content?product_id=35">
                                                    <img class="primary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/35_list_1.jpg" alt="안투리움(레드)">
                                                    <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/35_list_2.jpg" alt="안투리움(레드)(화분)">
                                                </a>
                                                <div class="product-add-action">
                                                    <ul>
                                                        <li>
                                                            <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-like"></i>
                                                            </a>
                                                        </li>
                                                       <!--  <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                            <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-look"></i>
                                                            </a>
                                                        </li> -->
                                                        <li>
                                                            <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-cart"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <a class="product-name main-product-title-jin" href="<%=pjName%>/product/product-content?product_id=35">안투리움(레드)</a>
                                                <div class="price-box pb-1">
                                                    <span class="new-price">14,000원</span>
                                                </div>
                                                <!-- <div class="rating-box">
                                                    <ul>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                    </ul>
                                                </div> -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-4 col-sm-6 pt-4">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="<%=pjName%>/product/product-content?product_id=36">
                                                    <img class="primary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/36_list_1.jpg" alt="안투리움(핑크)">
                                                    <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/36_list_2.jpg" alt="안투리움(핑크)(화분)">
                                                </a>
                                                <div class="product-add-action">
                                                    <ul>
                                                        <li>
                                                            <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-like"></i>
                                                            </a>
                                                        </li>
                                                       <!--  <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                            <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-look"></i>
                                                            </a>
                                                        </li> -->
                                                        <li>
                                                            <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-cart"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <a class="product-name main-product-title-jin" href="<%=pjName%>/product/product-content?product_id=36">안투리움(핑크)</a>
                                                <div class="price-box pb-1">
                                                    <span class="new-price">14,000원</span>
                                                </div>
                                               <!--  <div class="rating-box">
                                                    <ul>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                    </ul>
                                                </div> -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-4 col-sm-6 pt-4">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="<%=pjName%>/product/product-content?product_id=37">
                                                    <img class="primary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/37_list_1.jpg" alt="필로덴드론(맥콜리)">
                                                    <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/37_list_2.jpg" alt="필로덴드론(맥콜리)(화분)">
                                                </a>
                                                <div class="product-add-action">
                                                    <ul>
                                                        <li>
                                                            <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-like"></i>
                                                            </a>
                                                        </li>
                                                      <!--   <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                            <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-look"></i>
                                                            </a>
                                                        </li> -->
                                                        <li>
                                                            <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-cart"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <a class="product-name main-product-title-jin" href="<%=pjName%>/product/product-content?product_id=37">필로덴드론(맥콜리)</a>
                                                <div class="price-box pb-1">
                                                    <span class="new-price">45,900원</span>
                                                </div>
                                              <!--   <div class="rating-box">
                                                    <ul>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                    </ul>
                                                </div> -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-4 col-sm-6 pt-4">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="<%=pjName%>/product/product-content?product_id=38">
                                                    <img class="primary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/38_list_1.jpg" alt="스네이크플랜트(사유리)">
                                                    <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/38_list_2.jpg" alt="스네이크플랜트(사유리)(화분)">
                                                </a>
                                                <div class="product-add-action">
                                                    <ul>
                                                        <li>
                                                            <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-like"></i>
                                                            </a>
                                                        </li>
                                                       <!--  <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                            <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-look"></i>
                                                            </a>
                                                        </li> -->
                                                        <li>
                                                            <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-cart"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <a class="product-name main-product-title-jin" href="<%=pjName%>/product/product-content?product_id=38">스네이크플랜트(사유리)</a>
                                                <div class="price-box pb-1">
                                                    <span class="new-price">64,800원</span>
                                                </div>
                                              <!--   <div class="rating-box">
                                                    <ul>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                    </ul>
                                                </div> -->
                                            </div>
                                        </div>
                                    </div>
                                	
                                </div>
                            </div>
                            <!-- flower: 반려동물안심꽃 이미지로 경로 설정 요망-->
                            <div class="tab-pane fade" id="bestseller" role="tabpanel" aria-labelledby="bestseller-tab">
                                <div class="product-item-wrap row">
                                    <div class="col-xl-3 col-md-4 col-sm-6">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="<%=pjName%>/product/product-content?product_id=1">
                                                    <img class="primary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/1_list_1.jpg" alt="유카">
                                                    <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/1_list_2.jpg" alt="유카">
                                                </a>
                                                <div class="product-add-action">
                                                    <ul>
                                                        <li>
                                                            <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-like"></i>
                                                            </a>
                                                        </li>
                                                     <!--    <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                            <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-look"></i>
                                                            </a>
                                                        </li> -->
                                                        <li>
                                                            <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-cart"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <a class="product-name main-product-title-jin" href="shop.html">유카</a>
                                                <div class="price-box pb-1">
                                                    <span class="new-price">19,000원</span>
                                                </div>
                                             <!--    <div class="rating-box">
                                                    <ul>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                    </ul>
                                                </div> -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-4 col-sm-6">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="<%=pjName%>/product/product-content?product_id=2">
                                                	<img class="primary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/2_list_1.jpg" alt="호스타">
                                                    <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/2_list_2.jpg" alt="호스타">
                                                </a>
                                                <div class="product-add-action">
                                                    <ul>
                                                        <li>
                                                            <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-like"></i>
                                                            </a>
                                                        </li>
                                                  <!--       <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                            <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-look"></i>
                                                            </a>
                                                        </li> -->
                                                        <li>
                                                            <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-cart"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <a class="product-name main-product-title-jin" href="<%=pjName%>/product/product-content?product_id=2">호스타</a>
                                                <div class="price-box pb-1">
                                                    <span class="new-price">13,000원</span>
                                                </div>
                                           <!--      <div class="rating-box">
                                                    <ul>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                    </ul>
                                                </div> -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-4 col-sm-6">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="<%=pjName%>/product/product-content?product_id=3">
                                                	<img class="primary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/3_list_1.jpg" alt="설유화">
                                                    <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/3_list_2.jpg" alt="설유화">
                                                </a>
                                                <div class="product-add-action">
                                                    <ul>
                                                        <li>
                                                            <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-like"></i>
                                                            </a>
                                                        </li>
                                                      <!--   <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                            <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-look"></i>
                                                            </a>
                                                        </li> -->
                                                        <li>
                                                            <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-cart"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <a class="product-name main-product-title-jin" href="<%=pjName%>/product/product-content?product_id=3">설유화</a>
                                                <div class="price-box pb-1">
                                                    <span class="new-price">4,800원</span>
                                                </div>
                                              <!--   <div class="rating-box">
                                                    <ul>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                    </ul>
                                                </div> -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-4 col-sm-6">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="<%=pjName%>/product/product-content?product_id=50">
                                                	<img class="primary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/50_list_1.jpg" alt="올리브 트리">
                                                    <!-- <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/50_list_2.jpg" alt="올리브 트리"> -->
                                                </a>
                                                <div class="product-add-action">
                                                    <ul>
                                                        <li>
                                                            <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-like"></i>
                                                            </a>
                                                        </li>
                                                      <!--   <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                            <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-look"></i>
                                                            </a>
                                                        </li> -->
                                                        <li>
                                                            <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-cart"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <a class="product-name main-product-title-jin" href="<%=pjName%>/product/product-content?product_id=50">올리브 트리</a>
                                                <div class="price-box pb-1">
                                                    <span class="new-price">51,300원</span>
                                                </div>
                                              <!--   <div class="rating-box">
                                                    <ul>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                    </ul>
                                                </div> -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-4 col-sm-6 pt-4">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="<%=pjName%>/product/product-content?product_id=51">
                                                	<img class="primary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/51_list_1.jpg" alt="라지 컬래디어 웨이브스타아">
                                                   <!--  <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/51_list_2.jpg" alt="라지 컬래디어 웨이브스타아"> -->
                                                </a>
                                                <div class="product-add-action">
                                                    <ul>
                                                        <li>
                                                            <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-like"></i>
                                                            </a>
                                                        </li>
                                                      <!--   <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                            <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-look"></i>
                                                            </a>
                                                        </li> -->
                                                        <li>
                                                            <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-cart"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <a class="product-name main-product-title-jin" href="<%=pjName%>/product/product-content?product_id=51">라지 컬래디어 웨이브스타아</a>
                                                <div class="price-box pb-1">
                                                    <span class="new-price">132,300원</span>
                                                </div>
                                            <!--     <div class="rating-box">
                                                    <ul>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                    </ul>
                                                </div> -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-4 col-sm-6 pt-4">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="<%=pjName%>/product/product-content?product_id=52">
                                                	<img class="primary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/52_list_1.jpg" alt="라지 컬래디어 올리브 트리">
                                                   <!--  <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/52_list_2.jpg" alt="라지 컬래디어 올리브 트리"> -->
                                                </a>
                                                <div class="product-add-action">
                                                    <ul>
                                                        <li>
                                                            <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-like"></i>
                                                            </a>
                                                        </li>
                                                     <!--    <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                            <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-look"></i>
                                                            </a>
                                                        </li> -->
                                                        <li>
                                                            <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-cart"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <a class="product-name main-product-title-jin" href="<%=pjName%>/product/product-content?product_id=52">라지 컬래디어 올리브 트리</a>
                                                <div class="price-box pb-1">
                                                    <span class="new-price">189,000원</span>
                                                </div>
                                            <!--     <div class="rating-box">
                                                    <ul>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                    </ul>
                                                </div> -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-4 col-sm-6 pt-4">
                                        <div class="product-item">
                                            <div class="product-img">
                                            	<a href="<%=pjName%>/product/product-content?product_id=53">
                                                	<img class="primary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/53_list_1.jpg" alt="페퍼로우미어 레인드랍">
                                                   <!--  <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/53_list_2.jpg" alt="페퍼로우미어 레인드랍"> -->
                                                </a>
                                                <div class="product-add-action">
                                                    <ul>
                                                        <li>
                                                            <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-like"></i>
                                                            </a>
                                                        </li>
                                                     <!--    <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                            <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-look"></i>
                                                            </a>
                                                        </li> -->
                                                        <li>
                                                            <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-cart"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <a class="product-name main-product-title-jin" href="<%=pjName%>/product/product-content?product_id=53">페퍼로우미어 레인드랍</a>
                                                <div class="price-box pb-1">
                                                    <span class="new-price">91,800원</span>
                                                </div>
                                               <!--  <div class="rating-box">
                                                    <ul>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                    </ul>
                                                </div> -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-4 col-sm-6 pt-4">
                                        <div class="product-item">
                                            <div class="product-img">
												<a href="<%=pjName%>/product/product-content?product_id=54">
                                                	<img class="primary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/54_list_1.jpg" alt="버즈 네스트 펀">
                                                    <!-- <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/54_list_2.jpg" alt="버즈 네스트 펀">   -->
                                                </a>
                                                <div class="product-add-action">
                                                    <ul>
                                                        <li>
                                                            <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-like"></i>
                                                            </a>
                                                        </li>
                                                  <!--       <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                            <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-look"></i>
                                                            </a>
                                                        </li> -->
                                                        <li>
                                                            <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                <i class="pe-7s-cart"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <a class="product-name main-product-title-jin" href="<%=pjName%>/product/product-content?product_id=54">버즈 네스트 펀</a>
                                                <div class="price-box pb-1">
                                                    <span class="new-price">64,800원</span>
                                                </div>
                                               <!--  <div class="rating-box">
                                                    <ul>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                    </ul>
                                                </div> -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- flower: 밤에피는꽃 이미지로 경로 설정 요망-->
                            <%-- <div class="tab-pane fade" id="latest" role="tabpanel" aria-labelledby="latest-tab">
                                <div class="product-item-wrap row">
                                    <div class="col-xl-3 col-md-4 col-sm-6">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="<%=pjName%>/product/product-content?product_id=54">
                                                	<img class="primary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/54_list_1.jpg" alt="버즈 네스트 펀">
                                                    <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/product/imgs/list/54_list_2.jpg" alt="버즈 네스트 펀">
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
                                                <a class="product-name main-product-title-jin" href="shop.html">Doublefile Viburnum</a>
                                                <div class="price-box pb-1">
                                                    <span class="new-price">$67.45</span>
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
                                    <div class="col-xl-3 col-md-4 col-sm-6">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="shop.html">
                                                    <img class="primary-img product-img-jin" src="<%=pjName %>/resources/assets/images/product/medium-size/1-8-270x300.jpg" alt="Product Images">
                                                    <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/assets/images/product/medium-size/1-1-270x300.jpg" alt="Product Images">
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
                                                <a class="product-name main-product-title-jin" href="shop.html">Feather Reed Grass</a>
                                                <div class="price-box pb-1">
                                                    <span class="new-price">$20.00</span>
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
                                    <div class="col-xl-3 col-md-4 col-sm-6">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="shop.html">
                                                    <img class="primary-img product-img-jin" src="<%=pjName %>/resources/assets/images/product/medium-size/1-1-270x300.jpg" alt="Product Images">
                                                    <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/assets/images/product/medium-size/1-2-270x300.jpg" alt="Product Images">
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
                                                <a class="product-name main-product-title-jin" href="shop.html">American Marigold</a>
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
                                    </div>
                                    <div class="col-xl-3 col-md-4 col-sm-6">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="shop.html">
                                                    <img class="primary-img product-img-jin" src="<%=pjName %>/resources/assets/images/product/medium-size/1-2-270x300.jpg" alt="Product Images">
                                                    <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/assets/images/product/medium-size/1-3-270x300.jpg" alt="Product Images">
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
                                                <a class="product-name main-product-title-jin" href="shop.html">Black Eyed Susan</a>
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
                                    </div>
                                    <div class="col-xl-3 col-md-4 col-sm-6 pt-4">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="shop.html">
                                                    <img class="primary-img product-img-jin" src="<%=pjName %>/resources/assets/images/product/medium-size/1-5-270x300.jpg" alt="Product Images">
                                                    <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/assets/images/product/medium-size/1-6-270x300.jpg" alt="Product Images">
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
                                                <a class="product-name main-product-title-jin" href="shop.html">Butterfly Weed</a>
                                                <div class="price-box pb-1">
                                                    <span class="new-price">$50.45</span>
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
                                    <div class="col-xl-3 col-md-4 col-sm-6 pt-4">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="shop.html">
                                                    <img class="primary-img product-img-jin" src="<%=pjName %>/resources/assets/images/product/medium-size/1-6-270x300.jpg" alt="Product Images">
                                                    <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/assets/images/product/medium-size/1-7-270x300.jpg" alt="Product Images">
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
                                                <a class="product-name main-product-title-jin" href="shop.html">Common Yarrow</a>
                                                <div class="price-box pb-1">
                                                    <span class="new-price">$65.00</span>
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
                                    <div class="col-xl-3 col-md-4 col-sm-6 pt-4">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="shop.html">
                                                    <img class="primary-img product-img-jin" src="<%=pjName %>/resources/assets/images/product/medium-size/1-3-270x300.jpg" alt="Product Images">
                                                    <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/assets/images/product/medium-size/1-4-270x300.jpg" alt="Product Images">
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
                                                <a class="product-name main-product-title-jin" href="shop.html">Bleeding Heart</a>
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
                                    </div>
                                    <div class="col-xl-3 col-md-4 col-sm-6 pt-4">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="shop.html">
                                                    <img class="primary-img product-img-jin" src="<%=pjName %>/resources/assets/images/product/medium-size/1-4-270x300.jpg" alt="Product Images">
                                                    <img class="secondary-img product-img-jin" src="<%=pjName %>/resources/assets/images/product/medium-size/1-5-270x300.jpg" alt="Product Images">
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
                                                <a class="product-name main-product-title-jin" href="shop.html">Bloody Cranesbill</a>
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
                            </div> --%>
                        </div>
                    </div>
                </div> <!-- <div class="tab-content" id="myTabContent"> end -->
            </div>
        </div>
        <!-- Product Area End Here -->





        <!-- Begin Testimonial Area -->
      <div class="testimonial-area container">
        	<div class = 'row keyword' style = 'position : relative;'>
        	<br>
        	<br>
        	<br>
        	<br>
        	<br>
        	<br>
        	<br>
        	<br>
        	<br>
        	<br>
        	<br>
        	<br>
        	<br>
        	<br>
        	<br>
        	<br>
        	<br>
        	<br>
        	<br>
        	<br>
        	<br>
       		</div>
        </div>
        </div>
        </div>
        <!-- Testimonial Area End Here -->


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
    
    <script src="/flower/resources/assets/js/main2.js"></script>

<%@include file="flower_footer.jsp" %>
