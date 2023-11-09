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
                                <h2 class="breadcrumb-heading">주문 상세 내역</h2>
                                <ul>
                                    <li>
                                        <a href="index.html">Home</a>
                                    </li>
                                    <li>주문 상세 내역</li>
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
                                <div class = 'order_list botmargin40'>
                                	<ul class = 'order_list_cate'>
                                		<li class = 'width300'>주문상품</li>
                                		<li>수량</li>
                                		<li>금액</li>
                                		<li>상태</li>
                                	</ul>
                                	<c:forEach items = '${orderList}' var = 'orderproduct' varStatus="st">
                                	<ul class = 'order_list_body'>
                                		<li>
                                			<ul class = 'board_goods_list'>
                                				<li class = 'pic'>
                                					<a>
                                						<div class = 'wrphover'>
                                							<img src = '/flower/resources/product/imgs/list/${orderproduct.product_image_file_name}'>
                                						</div>
                                					</a>
                                				</li>
                                				<li class = 'info'>
                                					<div>
                                						<a>${orderproduct.product_name}</a>
                                					</div>
                                				</li>
                                			</ul>
                                		</li>
                                		<li>
                                			<c:if test="${st.index ne 0}">
                                			<c:if test="${orderList[st.index-1].product_name eq orderList[st.index].product_name}">aaaaaaaaaaaaaa</c:if>
                                			</c:if>
                                			<span>${orderproduct.order_product_quantity}개</span>
                                		</li>
                                		<li>
                                			<span class = 'price'>${orderproduct.order_product_price}원</span>
                                		</li>
                                		<li>
                                			<span>${orderproduct.order_state}</span>
                                		</li>
                                	</ul>
                                	</c:forEach>
                                </div>
                                <h3>주문자</h3>
                                
                                 <ul class = 'botmargin40'>
                                 	<li>
                                      	 <ul class = 'list_02'>
                                      	 	<li>
                                      	 		<span class = 'label'><span>주문자명</span></span>
                                      	 		<label>${member.member_name }</label>
                                      	 	</li>
                                      	 	<li>
                                      	 		<span class = 'label'><span>이메일</span></span>
                                      	 		<label>${member.member_email}</label>
                                      	 	</li>
                                      	 </ul>
                                  	</li>
                                </ul>
                                <h3>배송지</h3>
                    <c:forEach items = '${orderList}' var = 'orderproduct' end = '0'>
                                 <ul>
                                      <li>
                                      	 <ul class = 'list_02'>
                                      	 	<li>
                                      	 		<span class = 'label'><span>이름</span></span>
                                      	 		<label>${orderproduct.recipient_name}</label>
                                      	 	</li>
                                      	 	<li>
                                      	 		<span class = 'label'><span>주소</span></span>
                                      	 		<label><span>(${orderproduct.postal_code})</span> ${orderproduct.recipient_address}</label>
                                      	 		</li>
                                      	 	<li>
                                      	 		<span class = 'label'><span>휴대폰번호</span></span>
                                      	 		<label>${orderproduct.recipient_tel}</label>
                                      	 	</li>
                                      </ul>
                                      </li>
                                 </ul>
                                 </c:forEach>
                           </div>
                       </div>
                    	<div class="col-lg-6 col-12">
							<div class="checkbox-form">
                        		<h3>주문결제정보</h3>
                        		<c:forEach items = '${orderList}' var = 'orderproduct' end = '0'>
                                 <ul class = botborder>
                                      <li>
                                      	 <ul class = 'list_02'>
                                      	 	<li>
                                      	 		<span class = 'label'><span>주문번호</span></span>
                                      	 		<label>${orderproduct.order_detail_number}</label>
                                      	 	</li>
                                      	 	<li>
                                      	 		<span class = 'label'><span>결제일시</span></span>
                                      	 		<label>${orderproduct.order_date}</label>
                                      	 		</li>
                                      	 	<li>
                                      	 		<span class = 'label'><span>결제방식</span></span>
                                      	 		<label>카카오페이(일시불)</label>
                                      	 	</li>
                                      	 	<li>
                                      	 		<span class = 'label'><span>결제금액</span></span>
                                      	 		<label class = 'totalprice'>원</label>
                                      	 	</li>
                                      </ul>
                                   </li>
                                </ul>
                                </c:forEach>
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
    <script src="/flower/resources/assets/js/order/detailorder.js"></script>
    
    <%@include file="/flower_footer.jsp" %>