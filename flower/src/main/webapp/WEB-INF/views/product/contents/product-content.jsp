<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% String pjName 	= "/flower"; %>
<% String imgRoute  = "/resources/product/imgs/"; %>

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
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.ico" />

    <!-- CSS
    ============================================ -->

    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/Pe-icon-7-stroke.css" />
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/nice-select.css">
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/magnific-popup.min.css" />
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/ion.rangeSlider.min.css" />

    <!-- Style CSS -->
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/style.css">

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
                <div class="container h-100">
                    <div class="row h-100">
                        <div class="col-lg-12">
                            <div class="breadcrumb-item">
                                <h2 class="breadcrumb-heading">상품명</h2>
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
                                            <a href="<%=pjName %>/resources/assets/images/product/large-size/1-1-570x633.jpg" class="single-img gallery-popup">
                                                <img class="img-full" src="<%=pjName %>/resources/assets/images/product/large-size/1-1-570x633.jpg" alt="Product Image">
                                            </a>
                                        </div>
                                        <div class="swiper-slide">
                                            <a href="<%=pjName %>/resources/assets/images/product/large-size/1-2-570x633.jpg" class="single-img gallery-popup">
                                                <img class="img-full" src="<%=pjName %>/resources/assets/images/product/large-size/1-2-570x633.jpg" alt="Product Image">
                                            </a>
                                        </div>
                                        <div class="swiper-slide">
                                            <a href="<%=pjName %>/resources/assets/images/product/large-size/1-3-570x633.jpg" class="single-img gallery-popup">
                                                <img class="img-full" src="<%=pjName %>/resources/assets/images/product/large-size/1-3-570x633.jpg" alt="Product Image">
                                            </a>
                                        </div>
                                        <div class="swiper-slide">
                                            <a href="<%=pjName %>/resources/assets/images/product/large-size/1-4-570x633.jpg" class="single-img gallery-popup">
                                                <img class="img-full" src="<%=pjName %>/resources/assets/images/product/large-size/1-4-570x633.jpg" alt="Product Image">
                                            </a>
                                        </div>
                                    </div> <!-- <div class="swiper-wrapper"> end -->
                                </div> <!-- <div class="swiper-container single-product-slider"> end -->
                                <div class="thumbs-arrow-holder">
                                    <div class="swiper-container single-product-thumbs">
                                        <div class="swiper-wrapper">
                                            <a href="javascript:void(0);" class="swiper-slide">
                                                <img class="img-full" src="<%=pjName %>/resources/assets/images/product/large-size/1-1-570x633.jpg" alt="Product Thumnail">
                                            </a>
                                            <a href="javascript:void(0);" class="swiper-slide">
                                                <img class="img-full" src="<%=pjName %>/resources/assets/images/product/large-size/1-2-570x633.jpg" alt="Product Thumnail">
                                            </a>
                                            <a href="javascript:void(0);" class="swiper-slide">
                                                <img class="img-full" src="<%=pjName %>/resources/assets/images/product/large-size/1-3-570x633.jpg" alt="Product Thumnail">
                                            </a>
                                            <a href="javascript:void(0);" class="swiper-slide">
                                                <img class="img-full" src="<%=pjName %>/resources/assets/images/product/large-size/1-4-570x633.jpg" alt="Product Thumnail">
                                            </a>
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
                                <h2 class="title">American Marigold</h2>
                                <div class="price-box">
                                    <span class="new-price">$23.45</span>
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
                                    <span class="title">SKU:</span>
                                    <ul>
                                        <li>
                                            <a href="javascript:void(0);">Ch-256xl</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="product-category">
                                    <span class="title">Categories :</span>
                                    <ul>
                                        <li>
                                            <a href="javascript:void(0);">Office,</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);">Home</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="product-category product-tags">
                                    <span class="title">Tags :</span>
                                    <ul>
                                        <li>
                                            <a href="javascript:void(0);">Furniture</a>
                                        </li>
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
                                            <input class="cart-plus-minus-box" value="1" type="text">
                                        </div>
                                    </li>
                                    <li class="add-to-cart">
                                        <a class="btn btn-custom-size lg-size btn-pronia-primary" href="cart.html">Add to
                                            cart</a>
                                    </li>
                                    <li class="add-to-cart">
                                        <a class="btn btn-custom-size lg-size btn-pronia-primary" href="">바로구매</a>
                                    </li>
                                    <li class="wishlist-btn-wrap">
                                        <a class="custom-circle-btn" href="wishlist.html">
                                            <i class="pe-7s-like"></i>
                                        </a>
                                    </li>
                                    
                                    <!-- flower: 대단한 기능이지만 숨긴다 -->
                                    <!-- <li class="compare-btn-wrap">
                                        <a class="custom-circle-btn" href="compare.html">
                                            <i class="pe-7s-refresh-2"></i>
                                        </a>
                                    </li> -->
                                </ul>
                                
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
                        	<!-- flower: 상품상세하단- 탭메뉴(①information: 배송정보, 판매자정보, 상품청약철회 ②Description: 상품상세정보(키우는방법) ③Review ④QnA) -->
                            <ul class="nav product-tab-nav tab-style-2 pt-0" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <a class="tab-btn" id="information-tab" data-bs-toggle="tab" href="#information" role="tab" aria-controls="information" aria-selected="false">
                                        Information
                                    </a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="active tab-btn" id="description-tab" data-bs-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="true">
                                        Description
                                    </a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="tab-btn" id="reviews-tab" data-bs-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false">
                                        Reviews(3)
                                    </a>
                                </li>
                                <!-- flower: 상품상세하단 추가(QnA) → review 템플릿에서 일부분 사용요망! -->
                                <li class="nav-item" role="presentation">
                                    <a class="tab-btn" id="reviews-tab" data-bs-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false">
                                        QnA(3)
                                    </a>
                                </li>
                            </ul>
                            <!-- flower: 상품상세하단- 탭메뉴의 내용(①information: 배송정보, 판매자정보, 상품청약철회 ②Description: 상품상세정보(키우는방법) ③Review ④QnA) -->
                            <div class="tab-content product-tab-content">
                                <div class="tab-pane fade" id="information" role="tabpanel" aria-labelledby="information-tab">
                                    <div class="product-information-body">
                                        <h4 class="title">배송정보</h4>
                                        <p class="short-desc mb-4">별헤는 밤이면 들려오는 그대 음성<br/>(이미지 파일로 대체할 것인지 결정요망)</p>
                                        <h4 class="title">상품청약철회</h4>
                                        <p class="short-desc mb-4">하얗게 부서지는 꽃가루 되어<br/>(이미지 파일로 대체할 것인지 결정요망)</p>
                                        <h4 class="title">판매자정보</h4>
                                        <p class="short-desc mb-0">그대 품안에 잠들고 싶어라<br/>(이미지 파일로 대체할 것인지 결정요망)</p>
                                    </div>
                                </div>
                                <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                                    <div class="product-description-body">
                                        <p class="short-desc mb-0">상품 상세 설명<br/>
                                        (이미지로 불러올 것. product_id_description_number)<br/>
                                        보일듯 말듯 가물거리는 안개 속에 싸인 길 잡힐 듯 말듯 멀어져가는 무지개와 같은 길<br/>
                                        그 어디에서 날 기다리는지 둘러보아도 찾을 수 없네 <br/> 그대여 힘이 돼주오 나에게 주어진 길 찾을 수 있도록
                                        </p>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
                                    <div class="product-review-body">
                                        <div class="blog-comment mt-0">
                                            <h4 class="heading">Comments (03)</h4>
                                            <div class="blog-comment-item">
                                                <div class="blog-comment-img">
                                                    <img src="<%=pjName %>/resources/assets/images/blog/avatar/1-1-120x120.png" alt="User Image">
                                                </div>
                                                <div class="blog-comment-content">
                                                    <div class="user-meta">
                                                        <h2 class="user-name">Donald Chavez</h2>
                                                        <span class="date">21 July 2021</span>
                                                    </div>
                                                    <p class="user-comment">Lorem ipsum dolor sit amet, consectetur adipisi
                                                        elit, sed
                                                        do eiusmod tempor incidid ut labore etl dolore magna aliqua. Ut enim ad
                                                        minim
                                                        veniam, quis nostrud exercitati ullamco laboris nisi ut aliquiex ea
                                                        commodo
                                                        consequat.
                                                    </p>
                                                    <a class="btn btn-custom-size comment-btn" href="javascript:void(0);">Reply</a>
                                                </div>
                                            </div>
                                            <div class="blog-comment-item relpy-item">
                                                <div class="blog-comment-img">
                                                    <img src="<%=pjName %>/resources/assets/images/blog/avatar/1-2-120x120.png" alt="User Image">
                                                </div>
                                                <div class="blog-comment-content">
                                                    <div class="user-meta">
                                                        <h2 class="user-name">Marissa Swan</h2>
                                                        <span class="date">21 July 2021</span>
                                                    </div>
                                                    <p class="user-comment">Lorem ipsum dolor sit amet, consectetur adipisi
                                                        elit, sed do
                                                        eiusmod tempr incidid ut labore etl dolore magna aliqua. Ut enim ad
                                                        minim veniam,
                                                        quisnos exercitati ullamco laboris nisi ut aliquiex.
                                                    </p>
                                                    <a class="btn btn-custom-size comment-btn style-2" href="javascript:void(0);">Reply</a>
                                                </div>
                                            </div>
                                            <div class="blog-comment-item">
                                                <div class="blog-comment-img">
                                                    <img src="<%=pjName %>/resources/assets/images/blog/avatar/1-3-120x120.png" alt="User Image">
                                                </div>
                                                <div class="blog-comment-content">
                                                    <div class="user-meta">
                                                        <h2 class="user-name">Donald Chavez</h2>
                                                        <span class="date">21 July 2021</span>
                                                    </div>
                                                    <p class="user-comment">Lorem ipsum dolor sit amet, consectetur adipisi
                                                        elit, sed
                                                        do eiusmod tempor incidid ut labore etl dolore magna aliqua. Ut enim ad
                                                        minim
                                                        veniam, quis nostrud exercitati ullamco laboris nisi ut aliquiex ea
                                                        commodo
                                                        consequat.
                                                    </p>
                                                    <a class="btn btn-custom-size comment-btn" href="javascript:void(0);">Reply</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="feedback-area">
                                            <h2 class="heading">Leave a comment</h2>
                                            <form class="feedback-form" action="#">
                                                <div class="group-input">
                                                    <div class="form-field me-md-30 mb-30 mb-md-0">
                                                        <input type="text" name="name" placeholder="Your Name*" class="input-field">
                                                    </div>
                                                    <div class="form-field">
                                                        <input type="text" name="email" placeholder="Your Email*" class="input-field">
                                                    </div>
                                                </div>
                                                <div class="form-field mt-30">
                                                    <input type="text" name="subject" placeholder="Subject (Optinal)" class="input-field">
                                                </div>
                                                <div class="form-field mt-30">
                                                    <textarea name="message" placeholder="Message" class="textarea-field"></textarea>
                                                </div>
                                                <div class="button-wrap pt-5">
                                                    <button type="submit" value="submit" class="btn btn-custom-size xl-size btn-pronia-primary" name="submit">Post
                                                        Comment</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- flower: 상품 상세 하단 <div class="product-tab-area section-space-top-100"> end -->


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

<%@include file="/flower_footer.jsp" %>