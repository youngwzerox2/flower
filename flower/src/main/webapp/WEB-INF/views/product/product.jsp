<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<% String pjName = "/flower"; %>
<% String resource = "/flower/resources/product/imgs/list"; %>

<!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>오늘도 꽃을 보자:)</title>
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
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/nice-select.css">
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/magnific-popup.min.css" />
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/ion.rangeSlider.min.css" />
    <!-- flower: 원본과 달리 추가된 것(확인요망?) -->
    <link rel="stylesheet" href="<%=pjName %>/resources/product/css/_offcanvas_edit.css" />
    
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    
    <!-- Style CSS -->
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/style.css">
	<!-- Jin's CSS for header logo-->
	<link rel="stylesheet" href="<%=pjName %>/resources/assets/css/jin_style.css">
	
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
        	<!-- flower: nav 아래 중앙 큰 사진 -->
            <div class="breadcrumb-area breadcrumb-height" data-bg-image="<%=pjName %>/resources/assets/images/breadcrumb/bg/1-1-1919x388.jpg">
                <div class="container h-100">
                    <div class="row h-100">
                        <div class="col-lg-12">
                            <div class="breadcrumb-item">
                                <h2 class="breadcrumb-heading">${prodType.product_type}</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- flower: nav 아래 중앙 큰 사진 end-->
            
            <!-- flower: 상품 목록 시작 -->
            <div class="shop-area section-space-y-axis-100">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                        	<!-- flower: 상품 정렬 방식 탭바 -->
                            <div class="product-topbar product-filter-bar-jin">
                                <ul class="nav">
                                	<li class=""><span id="filter-title">상품정렬조건</span></li>
                                	<li class="product-view-wrap">
                                        <ul class="nav" role="tablist">
                                            <li class="grid-view" role="presentation">
                                                <a class="active" id="grid-view-tab" data-bs-toggle="tab" href="#grid-view" role="tab" aria-selected="true">
                                                    <i class="fa fa-th"></i>
                                                </a>
                                            </li>
                                            <li class="list-view" role="presentation">
                                                <a id="list-view-tab" data-bs-toggle="tab" href="#list-view" role="tab" aria-selected="true">
                                                    <i class="fa fa-th-list"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                    <form method="post" action="<%=pjName%>/product/filtered" id="product-filter-form">
                                     <input type="hidden" class="product-filter-condition checked" name="product_type" value="${prodType.product_type}" >
                                     <li class="">
                                    	<label for="petFriendly"><input class="product-filter-condition chk" type="checkbox" name="pet_friendly" id="petFriendly" value="true">반려동물안심</label>
                                     </li>
                                    <li class="">
                                    	<label for="easyCare"><input  class="product-filter-condition chk" type="checkbox" name="easy_care" id="easyCare" value="true">초보자용</label>
                                    </li>
                                    <li class="light-condition">
                                    	<span id="filter-type">일조량</span>
                                    	<label for="dl"><input type="radio" class="product-filter-condition light" name="product_light" id="dl" value="dl">양지</label>
                                    	<label for="idl"><input type="radio" class="product-filter-condition light" name="product_light" id="idl" value="idl">반음지</label>
                                    	<label for="sh"><input type="radio" class="product-filter-condition light" name="product_light" id="sh" value="sh">음지</label>
                                    	<label for="nm"><input type="radio" class="product-filter-condition light" name="product_light" id="nm" value="nm">영향적음</label>
                                    </li>
                                    <!-- id="product-filter-apply" -->
                                    <li class="short">
                                        <select class="nice-select" name="product_display_order">
                                            <option value="1">기본정렬</option>
                                            <option value="2">판매량순</option>
                                            <option value="3">리뷰많은순</option>
                                            <option value="4">찜많은순</option>
                                            <option value="5">가격높은순</option>
                                            <option value="6">가격낮은순</option>                                           
                                        </select>
                                    </li>
                                    <li><input type="submit" value="적용하기" id="filter-submit"></li>
                                    </form>
                                    
                                    
                                </ul>
                               
                            </div> <!-- <div class="product-topbar"> end -->
                            
                            <!-- flower: 상품 정렬(정렬 타입 2개 존재(id) - grid-view, list-view) -->
                            <div class="tab-content">
                            	<!-- flower: product list 상품 사진 목록 (그리드형: 사진만 나열, 한 행에 사진 3개씩, 한 페이지당 총 4행)-->
                                <div class="tab-pane fade show active" id="grid-view" role="tabpanel" aria-labelledby="grid-view-tab">
                                   <div class="product-grid-view row g-y-20" id="afterFilterRemove">
                                    <!-- flower: 리턴값 이름 -<%-- ${productList} --%> -->
                                    	<table>
                                    	 <tbody>
                                    	 <c:forEach items="${productList}" var="prod" varStatus="st">
                                    	 	<c:if test="${st.index % 3 == 0}">
                                    			<tr>
                                       		</c:if>
                                       		<!-- flower: original div class="col-lg-3 col-md-4 col-sm-6" -->
                                        	<div class="col-lg-3 col-md-4 col-sm-6">
                                            <div class="product-item">
                                                <div class="product-img">
                                                    <a href="<%=pjName%>/product/product-content?product_id=${prod.product_id}">
                                                    	<input type="hidden" name="${prod.product_id}"/>
                                                        <img class="primary-img" src="<%=pjName %>/resources/product/imgs/list/${prod.prod_imgs_lists[0]}" alt="${prod.product_name}1">
                                                        <c:if test="${not empty prod.prod_imgs_lists[1]}">
                                                        	<img class="secondary-img" src="<%=pjName %>/resources/product/imgs/list/${prod.prod_imgs_lists[1]}" alt="${prod.product_name}2">
                                                        </c:if>
                                                    </a>
                                                    <!-- flower: 이미지 위에 좋아요, 카트버튼 -->
                                                    <div class="product-add-action">
                                                        <ul>
                                                            <li><!-- flower: 상품목록에서 찜 바로 담기 & 로그인한 회원이 이미 찜한 상태일 경우 표시 -->
                                                                <a href="" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                    <i class="pe-7s-like"></i>
                                                                </a>
                                                            </li>
                                                            <li><!-- flower: 상품목록에서 장바구니 바로 담기 -->
                                                                <a href="" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                    <i class="pe-7s-cart"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div><!-- <div class="product-add-action"> end -->
                                                </div><!-- <div class="product-img"> end -->
                                                <div class="product-content">
                                                    <a class="product-name" href="<%=pjName%>/product/product-content?product_id=${prod.product_id}">${prod.product_name}</a>
                                                    <div class="price-box pb-1">
                                                        <span class="new-price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${prod.product_price}" /></span>
                                                    </div>
                                                    <!-- flower: 각 상품의 별점 → 일단 숨긴다 -->
                                                    <!-- <div class="rating-box">
                                                        <ul>
                                                            <li><i class="fa fa-star"></i></li>
                                                            <li><i class="fa fa-star"></i></li>
                                                            <li><i class="fa fa-star"></i></li>
                                                            <li><i class="fa fa-star"></i></li>
                                                            <li><i class="fa fa-star"></i></li>
                                                        </ul>
                                                    </div> -->
                                                </div> <!-- <div class="product-content"> end -->
                                            </div> <!-- <div class="product-item"> end -->
                                        </div> <!-- <div class="col-md-4 col-sm-6"> end -->
                                       </td>
                                      </c:forEach>
                                      <c:if test="${st.count % 3 == 0 || st.last}">
                                        	</tr>
                                      </c:if>
                                      </tbody>  
                                     </table>
                                   </div> <!-- <div class="product-grid-view row g-y-20"> end -->
                                </div> <!-- <div class="tab-pane fade show active" id="grid-view" role="tabpanel" aria-labelledby="grid-view-tab"> end -->
                               
                                <!-- flower: 상품목록 list 정렬형 -->
                                <div class="tab-pane fade" id="list-view" role="tabpanel" aria-labelledby="list-view-tab">
                                    <div class="product-list-view row g-y-30">
                                    	<c:forEach items="${productList}" var="prod" varStatus="st">
                                        <div class="col-12">
                                            <div class="product-item">
                                                <div class="product-img">
                                                    <a href="<%=pjName%>/product/product-content?product_id=${prod.product_id}">
                                                        <img class="primary-img" src="<%=pjName %>/resources/product/imgs/list/${prod.prod_imgs_lists[0]}" alt="${prod.product_name}1">
                                                        <c:if test="${not empty prod.prod_imgs_lists[1]}">
                                                        	<img class="secondary-img" src="<%=pjName %>/resources/product/imgs/list/${prod.prod_imgs_lists[1]}" alt="${prod.product_name}2">
                                                        </c:if>
                                                    </a>
                                                </div>
                                                <div class="product-content">
                                                    <a class="product-name" href="<%=pjName%>/product/product-content?product_id=${prod.product_id}">${prod.product_name}</a>
                                                    <div class="price-box pb-1">
                                                        <span class="new-price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${prod.product_price}" /></span>
                                                    </div>
                                                    <!-- flower: rating 일단 숨긴다 -->
                                                    <!-- <div class="rating-box">
                                                        <ul>
                                                            <li><i class="fa fa-star"></i></li>
                                                            <li><i class="fa fa-star"></i></li>
                                                            <li><i class="fa fa-star"></i></li>
                                                            <li><i class="fa fa-star"></i></li>
                                                            <li><i class="fa fa-star"></i></li>
                                                        </ul>
                                                    </div> -->
                                                    <p class="short-desc mb-0"> 우리의 꽃은 설명을 필요로 하지만 추후에 드리겠습니다. 미안합니다....
                                                    </p>
                                                    <div class="product-add-action">
                                                        <ul>
                                                            <li>
                                                                <a href="" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                    <i class="pe-7s-like"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                    <i class="pe-7s-cart"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div> <!-- <div class="product-item">end -->
                                        </div> <!-- <div class="col-12"> end -->
                                        </c:forEach>

                                    </div> <!--  <div class="product-list-view row g-y-30"> end -->
                                </div> <!--  <div class="tab-pane fade" id="list-view" role="tabpanel" aria-labelledby="list-view-tab"> end -->
                            </div> <!-- <div class="tab-content"> end -->
                            
                            <!-- flower: 페이징 버튼 -->
                            <div class="pagination-area">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-center">
                                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item">
                                            <a class="page-link" href="#" aria-label="Next">&raquo;</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div> <!-- <div class="col-lg-12"> end -->
                    </div>
                </div>
            </div>
        </main>
        <!-- Main Content Area End Here -->

       
		<!-- flower: modal.. 일단 숨긴다 -->
        <!-- Begin Modal Area -->
        <!-- 
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
        </div> -->
        <!-- Modal Area End Here -->

        <!-- Begin Scroll To Top -->
        <a class="scroll-to-top" href="">
            <i class="fa fa-angle-double-up"></i>
        </a>
        <!-- Scroll To Top End Here -->

    </div> <!-- flower: main wrapper end -->

	 <script src="<%=pjName %>/resources/assets/js/product/product.js"></script>
	<%@ include file="/flower_footer.jsp" %>