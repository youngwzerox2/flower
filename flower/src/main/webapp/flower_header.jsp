<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Jin's CSS for header logo-->
<link rel="stylesheet" href="<%=pjName %>/resources/assets/css/jin_style.css">
    
        <!-- Begin Main Header Area -->
        <header class="main-header-area">
			
            <div class="header-middle py-30">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-12">
                            <div class="header-middle-wrap position-relative">
								<div class="header-contact d-none d-lg-flex">
									<c:choose>
										<c:when test="${not empty sessionScope.member}">
											<div>어서오세요, ${sessionScope.member.member_name}님</div>
										</c:when>
										<c:otherwise>
											<div>즐거운 꽃구경:)</div>
										</c:otherwise>
									</c:choose>
                                </div>
								<!-- header: 로고 → 이미지 변경요망 -->
                                <a href="<%=pjName%>/flower_main" class="">
                                    <!-- flower: 로고, 캐치프레이즈 수정중 -->
                                    <!-- <img src="<%=pjName %>/resources/assets/images/logo/dark.png" alt="Header Logo"> -->
                                    <div class="header-logo-text"><span id="logo1">꽃</span>을 <span id="logo2">사</span>랑하는 사람은<br/>꽃에 <span id="logo3">물</span><span id="logo4">水</span>을 줘요</div>						
                                    <div class="header-logo-abbr">꽃사수</div>
                                </a>

                                <div class="header-right">
                                    <ul>
										<!-- header: 검색버튼 -->
                                        <li>
                                            <a href="#exampleModal" class="search-btn bt" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                <i class="pe-7s-search"></i>
                                            </a>
                                        </li>
										<!-- header: 계정 버튼 - 마이페이지, 로그인 드롭다운 -->
                                        <li class="dropdown d-none d-lg-block">
                                            <button class="btn btn-link dropdown-toggle ht-btn p-0" type="button" id="settingButton" data-bs-toggle="dropdown" aria-label="setting" aria-expanded="false">
                                                <i class="pe-7s-users"></i>
                                            </button>
											<!-- 계정버튼 드롭다운: 마이페이지, 로그인 -->
                                            <ul class="dropdown-menu" aria-labelledby="settingButton">
												<!-- 마이페이지 -->
                                              <li><a class="dropdown-item" href="<%=pjName %>/mypage/mypage1">My
														page</a></li>
												<c:choose>
													<c:when test="${empty sessionScope.member}">
														<li><a class="dropdown-item" href="<%=pjName %>/member/login">로그인</a></li>
														<!-- 회원가입 -->
														<li><a class="dropdown-item" href="<%=pjName %>/member/register">회원가입</a></li>
													</c:when>
													<c:otherwise>
														<li><a class="dropdown-item" href="<%=pjName %>/member/logout">로그아웃</a></li>
													</c:otherwise>
												</c:choose>
											</ul>
										</li>
										<!-- header: 좋아요(찜) 버튼 → 숨길까? -->
                                        <li class="d-none d-lg-block">
                                            <a href="wishlist.html">
                                                <i class="pe-7s-like"></i>
                                            </a>
                                        </li>
										<!-- header: 장바구니 -->
                                        <li class="minicart-wrap me-3 me-lg-0">
                                        	<c:choose>
                                        	 <c:when test="${not empty sessionScope.member}">
                                        	 	<!-- toolbar-btn -->
                                        	 	<a href="<%=pjName%>/cart/cart" class="minicart-btn">
                                                 <i class="pe-7s-shopbag"></i>
                                                 <span class="quantity">${sessionScope.member.member_cart_quan}</span>
                                             	</a>
                                             </c:when>
                                             <c:otherwise>
                                             	<a id="toCartwithoutLogin" class="minicart-btn toolbar-btn">
                                             		<i class="pe-7s-shopbag"></i>
                                             	</a>                                             	
                                             </c:otherwise>
                                            </c:choose>
                                        </li>
                                        <li class="mobile-menu_wrap d-block d-lg-none">
                                            <a href="#mobileMenu" class="mobile-menu_btn toolbar-btn pl-0">
                                                <i class="pe-7s-menu"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- flower header end -->
            
			<!-- flower: nav begin -->
            <div class="header-bottom d-none d-lg-block">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="main-menu position-relative">
							<!-- 메뉴 -->
                                <nav class="main-nav">
                                    <ul>
                                        <li class="drop-holder">
                                         	<!-- flower: 메뉴 이름 1/-->
                                            <a href="<%=pjName%>/flower_main.html">홈스윗홈</a>
											<!-- nav: home - dropdown → 숨긴다 -->
											<!--
                                            <ul class="drop-menu">
                                                <li>
                                                    <a href="index.html">Home One</a>
                                                </li>
                                                <li>
                                                    <a href="index-2.html">Home Two</a>
                                                </li>
                                            </ul> -->
                                        </li>
                                        <li class="megamenu-holder">
											<!-- flower: 메뉴 이름 2/-->
                                            <a href="<%=pjName%>/product/category/product">모든꽃보기</a>
                                        <li class="drop-holder"> 
                                            <!-- seasons에서 a태그 빼고, css/js로 cursor만 주도록 한다. -->
                                            <!-- flower: 메뉴 이름 3/-->
                                            <a><span id="nav_cursor">사계</span></a>
                                            <ul class="drop-menu">
                                                <li>
                                                	<!-- href에 절대경로로 입력해야, 어느 페이지에서든 controller와 연결된다 -->
                                                    <a href="<%=pjName%>/product/category/product?product_type=spring">봄</a>
                                                </li>
                                                <li>
                                                    <a href="<%=pjName%>/product/category/product?product_type=summer">여름</a>
                                                </li>
                                                <li>
                                                	<a href="<%=pjName%>/product/category/product?product_type=fall">가을</a>
                                                </li>
                                                <li>
                                                	<a href="<%=pjName%>/product/category/product?product_type=winter">겨울</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><!-- flower: 메뉴 이름 3/-->
                                            <a href="<%=pjName%>/product/category/product?product_type=easyCare">초보자용꽃</a>
                                        </li>
                                        <li><!-- flower: 메뉴 이름 4/-->
                                            <a href="<%=pjName%>/product/category/product?product_type=petFriendly">반려동물안심꽃</a>
                                        </li>
                                        <li><!-- flower: 메뉴 이름 5/-->
                                            <a href="<%=pjName%>/product/category/product?product_type=afterSunset">밤에피는꽃</a>
                                        </li>

                                    </ul>
                                </nav>
                            </div> <!-- <div class="main-menu position-relative"> end -->
                        </div> <!-- <div class="col-lg-12"> end -->
                    </div><!-- <div class="row"> end -->
                </div><!-- <div class="container"> end -->
            </div><!-- <div class="header-bottom d-none d-lg-block"> -->
            <!-- flower:nav end -->
            
            <!-- flower: 스크롤내릴 경우 상단에 고정되는 메뉴 -->
            <div class="header-sticky py-4 py-lg-0">
                <div class="container">
                    <div class="header-nav position-relative">
                        <div class="row align-items-center">
                            <div class="col-lg-3 col-6">

                                <a href="<%=pjName%>/flower_main" class="">
                                   <div class="header-logo-text"><span id="logo1">꽃</span>을 <span id="logo2">사</span>랑하는 사람은<br/>꽃에 <span id="logo3">물</span><span id="logo4">水</span>을 줘요</div>						
                                   <div class="header-logo-abbr">꽃사수</div>
                                </a>

                            </div>
                            <div class="col-lg-6 d-none d-lg-block">
                                <div class="main-menu">
                                    <nav class="main-nav">
                                        <ul>
                                            <li><a href="<%=pjName%>/flower_main.html">Home</a></li>
                                            <li><a href="">All</span></a></li>
                                            <li class="drop-holder">
                                                <a><span id="nav_cursor">Seasons</span></a>
                                                <ul class="drop-menu">
                                                    <li><a href="<%=pjName%>/product/category/product?product_type=spring">봄</a></li>
                                                    <li><a href="<%=pjName%>/product/category/product?product_type=summer">여름</a></li>
                                                    <li><a href="<%=pjName%>/product/category/product?product_type=fall">가을</a></li>
                                                    <li><a href="<%=pjName%>/product/category/product?product_type=winter">겨울</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="<%=pjName%>/product/category/product?product_type=easyCare">초보자용</a></li>
                                            <li><a href="<%=pjName%>/product/category/product?product_type=petFriendly">반려동물안심</a></li>
                                            <li><a href="<%=pjName%>/product/category/product?product_type=afterSunset">밤에피는</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div class="col-lg-3 col-6">
                                <div class="header-right">
                                    <ul>
                                        <li>
                                            <a href="#exampleModal" class="search-btn bt" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                <i class="pe-7s-search"></i>
                                            </a>
                                        </li>
                                        <li class="dropdown d-none d-lg-block">
                                            <button class="btn btn-link dropdown-toggle ht-btn p-0" type="button" id="
settingButton" data-bs-toggle="dropdown" aria-label="setting" aria-expanded="false">
                                                <i class="pe-7s-users"></i>
                                            </button>
                                            <ul class="dropdown-menu" aria-labelledby="stickysettingButton">
                                            	<!-- flower: header(sticky) 나의 계정 연결요망! -->
                                                <li><a class="dropdown-item" href="<%=pjName %>/mypage/mypage1">Mypage</a></li>
                                                <!-- flower: header(sticky) 로그인, 회원가입 연결요망! -->
                                          		 <c:choose>
													<c:when test="${empty sessionScope.member}">
														<li><a class="dropdown-item" href="<%=pjName %>/member/login">로그인</a></li>
														<!-- 회원가입 -->
														<li><a class="dropdown-item" href="<%=pjName %>/member/register">회원가입</a></li>
													</c:when>
													<c:otherwise>
														<li><a class="dropdown-item" href="<%=pjName %>/member/logout">로그아웃</a></li>
													</c:otherwise>
												</c:choose>
                                            </ul>
                                        </li>
                                        <!-- flower: header(sticky) 좋아요 논의요망 -->
                                        <li class="d-none d-lg-block">
                                            <a href="wishlist.html">
                                                <i class="pe-7s-like"></i>
                                            </a>
                                        </li>
                                        <!-- flower: header(sticky) 연결요망 -->
                                             <c:choose>
                                        		<c:when test="${not empty sessionScope.member}">
                                        			<!-- toolbar-btn -->
                                        	 		<a href="<%=pjName%>/cart/cart" class="minicart-btn">
                                                 	<i class="pe-7s-shopbag"></i>
                                                 	<span class="quantity">${cart.shopping_cart_product_quantity}</span>
                                             		</a>
                                            	</c:when>
                                            	<c:otherwise>
                                             		<a id="toCartwithoutLogin" class="minicart-btn">
                                             			<i class="pe-7s-shopbag"></i>
                                             		</a>                                             	
                                            	</c:otherwise>
                                            </c:choose>
                                        
                                        <li class="mobile-menu_wrap d-block d-lg-none">
                                            <a href="#mobileMenu" class="mobile-menu_btn toolbar-btn pl-0">
                                                <i class="pe-7s-menu"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- flower: 모바일 버전 -->
            <div class="mobile-menu_wrapper" id="mobileMenu">
                <div class="offcanvas-body">
                    <div class="inner-body">
                        <div class="offcanvas-top">
                            <a href="#" class="button-close"><i class="pe-7s-close"></i></a>
                        </div>
                        <div class="offcanvas-user-info">
                            <ul class="dropdown-wrap">
                                <li class="dropdown">
                                    <button class="btn btn-link dropdown-toggle ht-btn p-0" type="button" id="settingButtonTwo" data-bs-toggle="dropdown" aria-expanded="false">
                                        <i class="pe-7s-users"></i>
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="settingButtonTwo">
                                        <li><a class="dropdown-item" href="<%=pjName %>/mypage/mypage1">Mypage</a></li>
                                       			<c:choose>
													<c:when test="${empty sessionScope.member}">
														<li><a class="dropdown-item" href="<%=pjName %>/member/login">로그인</a></li>
														<!-- 회원가입 -->
														<li><a class="dropdown-item" href="<%=pjName %>/member/register">회원가입</a></li>
													</c:when>
													<c:otherwise>
														<li><a class="dropdown-item" href="<%=pjName %>/member/logout">로그아웃</a></li>
													</c:otherwise>
												</c:choose>
                                    </ul>
                                </li>
                                <li>
                                    <a href="wishlist.html">
                                        <i class="pe-7s-like"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="offcanvas-menu_area">
                            <nav class="offcanvas-navigation">
                                <ul class="mobile-menu">
                                    <li class="menu-item-has-children">
                                        <a href="#">
                                            <span class="mm-text">홈스윗홈<i class="pe-7s-angle-down"></i></span>
                                        </a>
                                    </li>
                                    <li class="menu-item-has-children">
                                        <a href="#">
                                            <span class="mm-text">Shop
                                        <i class="pe-7s-angle-down"></i>
                                    </span>
                                        </a>
                         
                                                
                                    </li>
                                    
                                    <li>
                                        <a href="about.html">
                                            <span class="mm-text">About Us</span>
                                        </a>
                                    </li>
                                    <li class="menu-item-has-children">
                                        <a href="#">
                                            <span class="mm-text">Pages
                                        <i class="pe-7s-angle-down"></i>
                                    </span>
                                        </a>
                                        <ul class="sub-menu">
                                            <li>
                                                <a href="faq.html">
                                                    <span class="mm-text">Frequently Questions</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="404.html">
                                                    <span class="mm-text">Error 404</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="contact.html">
                                            <span class="mm-text">Contact</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModal" aria-hidden="true">
                <div class="modal-dialog modal-fullscreen">
                    <div class="modal-content modal-bg-dark">
                        <div class="modal-header">
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" data-tippy="Close" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="modal-search">
                                <span class="searchbox-info">Start typing and press Enter to search or ESC to close</span>
                                <form action="#" class="hm-searchbox">
                                    <input type="text" name="Search..." value="Search..." onblur="if(this.value==''){this.value='Search...'}" onfocus="if(this.value=='Search...'){this.value=''}" autocomplete="off">
                                    <button class="search-btn" type="submit" aria-label="searchbtn">
                                        <i class="pe-7s-search"></i>
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="offcanvas-minicart_wrapper" id="miniCart">
                <div class="offcanvas-body">
                    <div class="minicart-content">
                        <div class="minicart-heading">
                            <h4 class="mb-0">Shopping Cart</h4>
                            <a href="#" class="button-close"><i class="pe-7s-close" data-tippy="Close" data-tippy-inertia="true"
                            data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true"
                            data-tippy-theme="sharpborder"></i></a>
                        </div>
                        <ul class="minicart-list">
                            <li class="minicart-product">
                                <a class="product-item_remove" href="#"><i class="pe-7s-close" data-tippy="Remove"
                                data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50"
                                data-tippy-arrow="true" data-tippy-theme="sharpborder"></i></a>
                                <a href="single-product-variable.html" class="product-item_img">
                                    <img class="img-full" src="<%=pjName %>/resources/assets/images/product/small-size/2-1-70x78.png" alt="Product Image">
                                </a>
                                <div class="product-item_content">
                                    <a class="product-item_title" href="single-product-variable.html">American Marigold</a>
                                    <span class="product-item_quantity">1 x $23.45</span>
                                </div>
                            </li>
                            <li class="minicart-product">
                                <a class="product-item_remove" href="#"><i class="pe-7s-close" data-tippy="Remove"
                                data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50"
                                data-tippy-arrow="true" data-tippy-theme="sharpborder"></i></a>
                                <a href="single-product-variable.html" class="product-item_img">
                                    <img class="img-full" src="<%=pjName %>/resources/assets/images/product/small-size/2-2-70x78.png" alt="Product Image">
                                </a>
                                <div class="product-item_content">
                                    <a class="product-item_title" href="single-product-variable.html">Black Eyed Susan</a>
                                    <span class="product-item_quantity">1 x $25.45</span>
                                </div>
                            </li>
                            <li class="minicart-product">
                                <a class="product-item_remove" href="#">
                                    <i class="pe-7s-close" data-tippy="Remove" data-tippy-inertia="true"
                                data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true"
                                data-tippy-theme="sharpborder"></i>
                                </a>
                                <a href="single-product-variable.html" class="product-item_img">
                                    <img class="img-full" src="<%=pjName %>/resources/assets/images/product/small-size/2-3-70x78.png" alt="Product Image">
                                </a>
                                <div class="product-item_content">
                                    <a class="product-item_title" href="single-product-variable.html">Bleeding Heart</a>
                                    <span class="product-item_quantity">1 x $30.45</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="minicart-item_total">
                        <span>Subtotal</span>
                        <span class="ammount">$79.35</span>
                    </div>
                    <div class="group-btn_wrap d-grid gap-2">
                        <a href="cart.html" class="btn btn-dark">View Cart</a>
                        <a href="checkout.html" class="btn btn-dark">Checkout</a>
                    </div>
                </div>
            </div>
            <div class="global-overlay"></div>
        </header>
        <!-- Main Header Area End Here -->
