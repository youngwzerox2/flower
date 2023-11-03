<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% String pjName = "/flower"; %>
<% String header = "/flower/flower_header.jsp"; %>
<% String footer = "/flower/flower_footer.jsp"; %>
<% String resource = "/flower/resources/product/imgs/list"; %>
<% String test = "assets/images/breadcrumb/bg/1-1-1919x388.jpg"; %>
<%-- <c:set var="pjName" value="<%=pjName%>" /> --%>

<!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>FlowerOwner(Home Two)</title>
    <meta name="robots" content="index, follow" />
    <meta name="description" content="Pronia plant store bootstrap 5 template is an awesome website template for any home plant shop.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="<%=pjName %>/resources/assets/images/favicon.ico" />

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
    <link rel="stylesheet" href="<%=pjName %>/resources/product/css/_offcanvas_edit.css" />
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
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
	

        <!-- Begin Main Content Area -->
        <main class="main-content">
        	<!-- flower: nav 아래 중앙 큰 사진 -->
            <div class="breadcrumb-area breadcrumb-height" data-bg-image="assets/images/breadcrumb/bg/1-1-1919x388.jpg">
                <div class="container h-100">
                    <div class="row h-100">
                        <div class="col-lg-12">
                            <div class="breadcrumb-item">
                                <h2 class="breadcrumb-heading">Shop</h2>
                                <ul>
                                    <li>
                                        <a href="index.html">Home</a>
                                    </li>
                                    <li>Shop Def</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- flower: nav 아래 중앙 큰 사진 end-->
          
          	<!-- flower: 상품 목록 (필터, 좌측 sidebar 포함) 시작 -->
            <div class="shop-area section-space-y-axis-100">
                <div class="container">
                    <div class="row">
                    <!-- flower: side bar(필터, 카테고리) -->
                        <div class="col-xl-3 col-lg-4 order-2 order-lg-1 pt-5 pt-lg-0">
                            <div class="sidebar-area">
                                <div class="widgets-searchbox">
                                	<!-- flower: 꽃말키워드 검색? -->
                                    <form id="widgets-searchbox">
                                        <input class="input-field" type="text" placeholder="꽃말 키워드 검색">
                                        <button class="widgets-searchbox-btn" type="submit">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </form>
                                </div>
                                <div class="widgets-area">
                                    <div class="widgets-item pt-0">
                                        <h2 class="widgets-title mb-4">Category</h2>
                                        <ul class="widgets-category">
                                            <li><a href="#">All <span>(fnc)</span></a></li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-chevron-right"></i>
                                                    Seasons<span>(fnc)</span>
                                                </a>
                                            </li>
                                            <li><a href="#">For Beginners <span>(fnc)</span></a></li>
                                            <li><a href="#">Pet-Friendly <span>(fnc)</span></a></li>
                                            <li><a href="#">After Sunset <span>(fnc)</span></a></li>
                                            <li><a href="#">Faux <span>(fnc)</span></a></li>
                                        </ul>
                                    </div> <!-- flower: 좌측 카테고리 메뉴end <div class="widgets-item pt-0"> end -->
                                    
                                    <div class="widgets-item widgets-filter">
                                        <h2 class="widgets-title mb-4">Price Filter</h2>
                                        <div class="price-filter">
                                            <input type="text" class="pronia-range-slider" name="pronia-range-slider" value="" data-type="double" data-min="16" data-from="16" data-to="300" data-max="350" data-grid="false" />
                                        </div>
                                        
                                    </div>
                                    <!-- flower: filter 추가 - checkbox(pet, easy) -->
                                    <div class="widgets-item widgets-filter">
                                        <h2 class="widgets-title mb-4">Detail Filter</h2>
                                        <div class="detail-filter">
                                            <label for="pet_friendly"><input type="checkbox" class="detail-filter" name="pet_friendly" value="pet_friendly" id="pet_friendly"/>Pet Friendly</label><br/>
                                            <label for="easy_care"><input type="checkbox" class="detail-filter" name="easy_care" value="easy_care" id="easy_care" />Easy Care</label><br/>
                                        </div>
                                    </div>
                                    
                                    <!-- flower: filter - radio(light) -->
                                    <div class="widgets-item widgets-filter">
                                    	<h2 class="widgets-title mb-4">Light</h2>
                                    	<div class="detail-filter light">
                                            <label for="dl"><input type="radio" id="dl" name="light"  class="detail-filter" value="dl">Direct light</lable><br/>
                                            <label for="idl"><input type="radio" id="idl" name="light" class="detail-filter" value="idl">Indirect Light</lable><br/>
                                            <label for="sh"><input type="radio" id="sh" name="light"  class="detail-filter" value="sh">Shade</lable><br/>
                                            <label for="nm"><input type="radio" id="nm" name="light"  class="detail-filter" value="nm">No matter</lable><br/>
                                    	</div>
                                    </div>
                                    
                                    <!-- flower: filter - 꽃말키워드 -->
                                    <div class="widgets-item">
                                        <h2 class="widgets-title mb-4">꽃말키워드</h2>
                                        <ul class="widgets-tag">
                                            <li>
                                                <a href="#">사랑</a>
                                            </li>
                                            <li>
                                                <a href="#">존경</a>
                                            </li>
                                            <li>
                                                <a href="#">도전</a>
                                            </li>
                                            <li>
                                                <a href="#">용기</a>
                                            </li>
                                            <li>
                                                <a href="#">우정</a>
                                            </li>
                                            <li>
                                                <a href="#">감사</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                
                            </div><!-- <div class="sidebar-area"> end -->
                        </div><!-- flower: side-bar <div class="col-xl-3 col-lg-4 order-2 order-lg-1 pt-5 pt-lg-0"> end -->
                        
                        <!-- flower: 상품 목록 -->
                        <div class="col-xl-9 col-lg-8 order-1 order-lg-2">
                        	<!-- flowre: 상품 정렬 control(총 상품 수, display방식(그리드/리스트), 정렬종류(판매량순, 별점순, 가격높은/낮은순) -->
                            <div class="product-topbar">
                                <ul>
                                    <li class="page-count">
                                        <span>12</span> Product Found of <span>30</span>
                                    </li>
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
                                    <li class="short">
                                        <select class="nice-select">
                                            <option value="1">Sort by Default</option>
                                            <option value="2">Sort by Popularity</option>
                                            <option value="3">Sort by Rated</option>
                                            <option value="5">Sort by High Price</option>
                                            <option value="6">Sort by Low Price</option>
                                        </select>
                                    </li>
                                </ul>
                            </div>
                             
                            <!-- flower: product list 상품 사진 목록 (사진만 나열, 한 행에 사진 3개씩, 한 페이지당 총 4행)-->
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="grid-view" role="tabpanel" aria-labelledby="grid-view-tab">
                                    <div class="product-grid-view row g-y-20">
                                    <!-- flower: 개별 상품 사진, 정보(리턴값 이름 ${productList}) -->
                                     <table>
                                      <c:forEach items="${productList}" var="prod" varStatus="st">
                                       <c:if test="${st.index % 3 == 0}">
                                    	<tr>
                                       </c:if>
                                    	<td>
                                        <div class="col-md-4 col-sm-6">
                                            <div class="product-item">
                                                <div class="product-img">
                                                    <a href="<%=pjName%>/product/contents/product-content?product_id=${prod.product_id}">
                                                    	<input type="hidden" name="${prod.product_id}"/>
                                                    	<img class="primary-img" src="<%=pjName %>/resources/product/imgs/list/${prod.prod_imgs_list1}.jpg" alt="${prod.product_name}1">
                                                    	<c:if test="${not empty prod.prod_imgs_list2}">
                                                        	<img class="secondary-img" src="<%=pjName %>/resources/product/imgs/list/${prod.prod_imgs_list2}.jpg" alt="${prod.product_name}2">
                                                        </c:if>
                                                    </a>
                                                    <!-- flower: 이미지 위에 좋아요, 카트버튼 -->
                                                    <div class="product-add-action">
                                                        <ul>
                                                            <li>
                                                                <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                    <i class="pe-7s-like"></i>
                                                                </a>
                                                            </li>
                                                            <!-- flower: 퀵뷰 → 숨긴다 -->
                                                            <!-- 
                                                            <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                                <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                    <i class="pe-7s-look"></i>
                                                                </a>
                                                            </li>
                                                             -->
                                                            <li>
                                                                <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                    <i class="pe-7s-cart"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div> <!-- <div class="product-add-action"> end -->
                                                </div> <!-- <div class="product-img"> end -->
                                                
                                                <!-- flower: 상품 정보(상품명, 가격) -->
                                                <div class="product-content">
                                                    <a class="product-name" href="single-product-variable.html">${prod.product_name}</a>
                                                    <div class="price-box pb-1">
                                                        <span class="new-price">${prod.product_price}</span>
                                                    </div>
                                                    <div class="rating-box">
                                                        <ul>
                                                            <li><i class="fa fa-star"></i></li>
                                                            <li><i class="fa fa-star"></i></li>
                                                            <li><i class="fa fa-star"></i></li>
                                                            <li><i class="fa fa-star"></i></li>
                                                            <li><i class="fa fa-star"></i></li>
                                                        </ul>
                                                    </div> <!-- <div class="rating-box"> end -->
                                                </div> <!-- <div class="product-content"> end -->
                                            </div> <!-- <div class="product-item"> end -->
                                        </div> <!-- <div class="col-md-4 col-sm-6"> end -->
                                       </td>
                                      </c:forEach>
                                        
                                        <c:if test="${st.count % 3 == 0 || st.last}">
                                        	</tr>
                                        </c:if>
                                     </table>    
                                    </div> <!-- <div class="product-grid-view row g-y-20"> end -->
                                </div> <!-- <div class="tab-pane fade show active" id="grid-view" role="tabpanel" aria-labelledby="grid-view-tab"> end -->
                                
                                <!-- flower: product list 상품 사진 목록(한 줄에 하나씩) -->
                                <div class="tab-pane fade" id="list-view" role="tabpanel" aria-labelledby="list-view-tab">
                                    <div class="product-list-view row g-y-30">
                                        <div class="col-12">
                                            <div class="product-item">
                                                <div class="product-img">
                                                    <a href="single-product-variable.html">
                                                        <img class="primary-img" src="assets/images/product/medium-size/1-1-270x300.jpg" alt="Product Images">
                                                        <img class="secondary-img" src="assets/images/product/medium-size/1-2-270x300.jpg" alt="Product Images">
                                                    </a>
                                                </div>
                                                <div class="product-content">
                                                    <a class="product-name" href="single-product-variable.html">American
                                                        Marigold</a>
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
                                                    <p class="short-desc mb-0">Proin nec ligula dolor. Mauris mollis turpis
                                                        vitae viverra viverra. Mauris at lacus commodo, dictum eros in, interdum
                                                        diam. Sed lorem orci, maximus nec efficitur, mattis sed tortor.
                                                        Voluptates repudiandae nulla rhoncus varius eget id eros.
                                                    </p>
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
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="product-item">
                                                <div class="product-img">
                                                    <a href="single-product-variable.html">
                                                        <img class="primary-img" src="assets/images/product/medium-size/1-2-270x300.jpg" alt="Product Images">
                                                        <img class="secondary-img" src="assets/images/product/medium-size/1-3-270x300.jpg" alt="Product Images">
                                                    </a>
                                                </div>
                                                <div class="product-content">
                                                    <a class="product-name" href="single-product-variable.html">Black Eyed
                                                        Susan</a>
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
                                                    <p class="short-desc mb-0">Proin nec ligula dolor. Mauris mollis turpis
                                                        vitae viverra viverra. Mauris at lacus commodo, dictum eros in, interdum
                                                        diam. Sed lorem orci, maximus nec efficitur, mattis sed tortor.
                                                        Voluptates repudiandae nulla rhoncus varius eget id eros.
                                                    </p>
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
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="product-item">
                                                <div class="product-img">
                                                    <a href="single-product-variable.html">
                                                        <img class="primary-img" src="assets/images/product/medium-size/1-3-270x300.jpg" alt="Product Images">
                                                        <img class="secondary-img" src="assets/images/product/medium-size/1-4-270x300.jpg" alt="Product Images">
                                                    </a>
                                                </div>
                                                <div class="product-content">
                                                    <a class="product-name" href="single-product-variable.html">Bleedin
                                                        Heart</a>
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
                                                    <p class="short-desc mb-0">Proin nec ligula dolor. Mauris mollis turpis
                                                        vitae viverra viverra. Mauris at lacus commodo, dictum eros in, interdum
                                                        diam. Sed lorem orci, maximus nec efficitur, mattis sed tortor.
                                                        Voluptates repudiandae nulla rhoncus varius eget id eros.
                                                    </p>
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
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="product-item">
                                                <div class="product-img">
                                                    <a href="single-product-variable.html">
                                                        <img class="primary-img" src="assets/images/product/medium-size/1-4-270x300.jpg" alt="Product Images">
                                                        <img class="secondary-img" src="assets/images/product/medium-size/1-5-270x300.jpg" alt="Product Images">
                                                    </a>
                                                </div>
                                                <div class="product-content">
                                                    <a class="product-name" href="single-product-variable.html">Bloody
                                                        Cranesbill</a>
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
                                                    <p class="short-desc mb-0">Proin nec ligula dolor. Mauris mollis turpis
                                                        vitae viverra viverra. Mauris at lacus commodo, dictum eros in, interdum
                                                        diam. Sed lorem orci, maximus nec efficitur, mattis sed tortor.
                                                        Voluptates repudiandae nulla rhoncus varius eget id eros.
                                                    </p>
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
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="product-item">
                                                <div class="product-img">
                                                    <a href="single-product-variable.html">
                                                        <img class="primary-img" src="assets/images/product/medium-size/1-5-270x300.jpg" alt="Product Images">
                                                        <img class="secondary-img" src="assets/images/product/medium-size/1-6-270x300.jpg" alt="Product Images">
                                                    </a>
                                                </div>
                                                <div class="product-content">
                                                    <a class="product-name" href="single-product-variable.html">Butterfly
                                                        Weed</a>
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
                                                    <p class="short-desc mb-0">Proin nec ligula dolor. Mauris mollis turpis
                                                        vitae viverra viverra. Mauris at lacus commodo, dictum eros in, interdum
                                                        diam. Sed lorem orci, maximus nec efficitur, mattis sed tortor.
                                                        Voluptates repudiandae nulla rhoncus varius eget id eros.
                                                    </p>
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
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="product-item">
                                                <div class="product-img">
                                                    <a href="single-product-variable.html">
                                                        <img class="primary-img" src="assets/images/product/medium-size/1-6-270x300.jpg" alt="Product Images">
                                                        <img class="secondary-img" src="assets/images/product/medium-size/1-7-270x300.jpg" alt="Product Images">
                                                    </a>
                                                </div>
                                                <div class="product-content">
                                                    <a class="product-name" href="single-product-variable.html">Common
                                                        Yarrow</a>
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
                                                    <p class="short-desc mb-0">Proin nec ligula dolor. Mauris mollis turpis
                                                        vitae viverra viverra. Mauris at lacus commodo, dictum eros in, interdum
                                                        diam. Sed lorem orci, maximus nec efficitur, mattis sed tortor.
                                                        Voluptates repudiandae nulla rhoncus varius eget id eros.
                                                    </p>
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
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="product-item">
                                                <div class="product-img">
                                                    <a href="single-product-variable.html">
                                                        <img class="primary-img" src="assets/images/product/medium-size/1-7-270x300.jpg" alt="Product Images">
                                                        <img class="secondary-img" src="assets/images/product/medium-size/1-8-270x300.jpg" alt="Product Images">
                                                    </a>
                                                </div>
                                                <div class="product-content">
                                                    <a class="product-name" href="single-product-variable.html">Doublefile
                                                        Viburnum</a>
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
                                                    <p class="short-desc mb-0">Proin nec ligula dolor. Mauris mollis turpis
                                                        vitae viverra viverra. Mauris at lacus commodo, dictum eros in, interdum
                                                        diam. Sed lorem orci, maximus nec efficitur, mattis sed tortor.
                                                        Voluptates repudiandae nulla rhoncus varius eget id eros.
                                                    </p>
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
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="product-item">
                                                <div class="product-img">
                                                    <a href="single-product-variable.html">
                                                        <img class="primary-img" src="assets/images/product/medium-size/1-8-270x300.jpg" alt="Product Images">
                                                        <img class="secondary-img" src="assets/images/product/medium-size/1-9-270x300.jpg" alt="Product Images">
                                                    </a>
                                                </div>
                                                <div class="product-content">
                                                    <a class="product-name" href="single-product-variable.html">Feather Reed
                                                        Grass</a>
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
                                                    <p class="short-desc mb-0">Proin nec ligula dolor. Mauris mollis turpis
                                                        vitae viverra viverra. Mauris at lacus commodo, dictum eros in, interdum
                                                        diam. Sed lorem orci, maximus nec efficitur, mattis sed tortor.
                                                        Voluptates repudiandae nulla rhoncus varius eget id eros.
                                                    </p>
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
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="product-item">
                                                <div class="product-img">
                                                    <a href="single-product-variable.html">
                                                        <img class="primary-img" src="assets/images/product/medium-size/1-9-270x300.jpg" alt="Product Images">
                                                        <img class="secondary-img" src="assets/images/product/medium-size/1-10-270x300.jpg" alt="Product Images">
                                                    </a>
                                                </div>
                                                <div class="product-content">
                                                    <a class="product-name" href="single-product-variable.html">Moss Verbena</a>
                                                    <div class="price-box pb-1">
                                                        <span class="new-price">$15.25</span>
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
                                                    <p class="short-desc mb-0">Proin nec ligula dolor. Mauris mollis turpis
                                                        vitae viverra viverra. Mauris at lacus commodo, dictum eros in, interdum
                                                        diam. Sed lorem orci, maximus nec efficitur, mattis sed tortor.
                                                        Voluptates repudiandae nulla rhoncus varius eget id eros.
                                                    </p>
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
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="product-item">
                                                <div class="product-img">
                                                    <a href="single-product-variable.html">
                                                        <img class="primary-img" src="assets/images/product/medium-size/1-10-270x300.jpg" alt="Product Images">
                                                        <img class="secondary-img" src="assets/images/product/medium-size/1-1-270x300.jpg" alt="Product Images">
                                                    </a>
                                                </div>
                                                <div class="product-content">
                                                    <a class="product-name" href="single-product-variable.html">Million Gold</a>
                                                    <div class="price-box pb-1">
                                                        <span class="new-price">$72.25</span>
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
                                                    <p class="short-desc mb-0">Proin nec ligula dolor. Mauris mollis turpis
                                                        vitae viverra viverra. Mauris at lacus commodo, dictum eros in, interdum
                                                        diam. Sed lorem orci, maximus nec efficitur, mattis sed tortor.
                                                        Voluptates repudiandae nulla rhoncus varius eget id eros.
                                                    </p>
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
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="product-item">
                                                <div class="product-img">
                                                    <a href="single-product-variable.html">
                                                        <img class="primary-img" src="assets/images/product/medium-size/1-11-270x300.jpg" alt="Product Images">
                                                        <img class="secondary-img" src="assets/images/product/medium-size/1-1-270x300.jpg" alt="Product Images">
                                                    </a>
                                                </div>
                                                <div class="product-content">
                                                    <a class="product-name" href="single-product-variable.html">Hybrid Pansy</a>
                                                    <div class="price-box pb-1">
                                                        <span class="new-price">$54.25</span>
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
                                                    <p class="short-desc mb-0">Proin nec ligula dolor. Mauris mollis turpis
                                                        vitae viverra viverra. Mauris at lacus commodo, dictum eros in, interdum
                                                        diam. Sed lorem orci, maximus nec efficitur, mattis sed tortor.
                                                        Voluptates repudiandae nulla rhoncus varius eget id eros.
                                                    </p>
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
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="product-item">
                                                <div class="product-img">
                                                    <a href="single-product-variable.html">
                                                        <img class="primary-img" src="assets/images/product/medium-size/1-7-270x300.jpg" alt="Product Images">
                                                        <img class="secondary-img" src="assets/images/product/medium-size/1-8-270x300.jpg" alt="Product Images">
                                                    </a>
                                                </div>
                                                <div class="product-content">
                                                    <a class="product-name" href="single-product-variable.html">Doublefile
                                                        Viburnum</a>
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
                                                    <p class="short-desc mb-0">Proin nec ligula dolor. Mauris mollis turpis
                                                        vitae viverra viverra. Mauris at lacus commodo, dictum eros in, interdum
                                                        diam. Sed lorem orci, maximus nec efficitur, mattis sed tortor.
                                                        Voluptates repudiandae nulla rhoncus varius eget id eros.
                                                    </p>
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
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- <div class="tab-content"> end -->

                            
                            <!-- flower: 게시판 페이지 넘기기 버튼 -->
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
                        </div> <!-- flower: 상품목록 <div class="col-xl-9 col-lg-8 order-1 order-lg-2"> end -->
                    </div> <!-- flower: 상품목록 + 좌측 바 + 상단필터 <div class="row"> end -->
                </div> <!-- flower: 현 페이지 container <div class="container"> end -->
            </div> <!-- flower: 현 페이지 중앙 사진 바로 아래 전체 <div class="shop-area section-space-y-axis-100"> end -->
        </main>
        <!-- Main Content Area End Here -->

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
                                                    <img class="img-full" src="assets/images/product/large-size/1-1-570x633.jpg" alt="Product Image">
                                                </a>
                                            </div>
                                            <div class="swiper-slide">
                                                <a href="#" class="single-img">
                                                    <img class="img-full" src="assets/images/product/large-size/1-2-570x633.jpg" alt="Product Image">
                                                </a>
                                            </div>
                                            <div class="swiper-slide">
                                                <a href="#" class="single-img">
                                                    <img class="img-full" src="assets/images/product/large-size/1-3-570x633.jpg" alt="Product Image">
                                                </a>
                                            </div>
                                            <div class="swiper-slide">
                                                <a href="#" class="single-img">
                                                    <img class="img-full" src="assets/images/product/large-size/1-4-570x633.jpg" alt="Product Image">
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
                                                <img src="assets/images/shipping/icon/car.png" alt="Shipping Icon">
                                            </div>
                                            <div class="service-content">
                                                <span class="title">Free <br> Shipping</span>
                                            </div>
                                        </li>
                                        <li class="service-item">
                                            <div class="service-img">
                                                <img src="assets/images/shipping/icon/card.png" alt="Shipping Icon">
                                            </div>
                                            <div class="service-content">
                                                <span class="title">Safe <br> Payment</span>
                                            </div>
                                        </li>
                                        <li class="service-item">
                                            <div class="service-img">
                                                <img src="assets/images/shipping/icon/service.png" alt="Shipping Icon">
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
<script src="<%=pjName %>/resources/assets/js/product/product.js"></script>
<%@ include file="/flower_footer.jsp" %>