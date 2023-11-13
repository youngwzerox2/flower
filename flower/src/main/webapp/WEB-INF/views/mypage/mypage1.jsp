<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

    <!-- CSS
    ============================================ -->

    <link rel="stylesheet" href="/flower/resources/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/flower/resources/assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="/flower/resources/assets/css/Pe-icon-7-stroke.css" />
    <link rel="stylesheet" href="/flower/resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="/flower/resources/assets/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="/flower/resources/assets/css/nice-select.css">
    <link rel="stylesheet" href="/flower/resources/assets/css/magnific-popup.min.css" />
    <link rel="stylesheet" href="/flower/resources/assets/css/ion.rangeSlider.min.css" />
   	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <!-- Style CSS -->
    <link rel="stylesheet" href="/flower/resources/assets/css/style.css">

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
                                <h2 class="breadcrumb-heading">My Account Page</h2>
                                <ul>
                                    <li>
                                        <a href="index.html">Home</a>
                                    </li>
                                    <li>My Account</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="account-page-area section-space-y-axis-100">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3">
                            <ul class="nav myaccount-tab-trigger" id="account-page-tab" role="tablist">
                                <li class="nav-item">
                                    <a id="account-dashboard-tab" href="#account-dashboard_info" data-bs-toggle="collapse" role="tab" >나의 쇼핑정보</a>
                                </li>
                                <li class = 'sub-nav-item collapse show' id = "account-dashboard_info" >
                                	<a class="nav-link active" id = account-like-tab data-bs-toggle="tab" role="tab" aria-controls="account-like" href="#account-like" aria-expanded="true">마음에 든 꽃</a>
                                	<a class="nav-link" id = account-orders-tab data-bs-toggle="tab" role="tab" aria-controls="account-orders" href="#account-orders" aria-expanded="false">구매내역</a>
                                	<a class="nav-link" id = account-inquiry-tab data-bs-toggle="tab" role="tab" aria-controls="account-inquiry" href="#account-inquiry" aria-expanded="false" >문의내역</a>
                                </li>
                                <li class="nav-item">
                                    <a id="account-orders2-tab" data-bs-toggle="collapse" href="#account-orders_info" role="tab">개인정보관리</a>
                                </li>
                                 <li class = 'sub-nav-item  collapse'  id = "account-orders_info">
                                	<a class="nav-link" id = account-address-tab data-bs-toggle="tab" role="tab" aria-controls="account-address" href="#account-address" aria-expanded="false">배송지 관리</a>
                                	<a class="nav-link" id = account-password-tab data-bs-toggle="tab"  role="tab" aria-controls="account-password" href="#account-password" aria-expanded="false">비밀번호 관리</a>
                                	<a class="nav-link" id = account-withdrwal-tab data-bs-toggle="tab" role="tab" aria-controls="account-withdrwal" href="#account-withdrwal" aria-expanded="false">회원 탈퇴</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-9">
                            <div class="tab-content myaccount-tab-content" id="account-page-tab-content">
                                <div class="tab-pane fade show active" id="account-like" role="tabpanel" aria-labelledby="account-like-tab">
                                    <div class="myaccount-like">
                                    <h4 class="small-title">나의 좋아요</h4>
                                    <c:choose>
                                    	<c:when test="${empty product}">
                                    		나의 좋아요가 없습니다.
                                    	</c:when>
                                    	<c:otherwise>
                                    		<table class="table table-bordered mypage-list">
                                    	<c:forEach items = "${product}" var = "img"  varStatus="st">
                                    		 <c:if test = "${st.index % 3 == 0 }">
												<tr>
											</c:if>
												<td>
													<a href ="#"><img src ="/flower/resources/product/imgs/list/${img.product_image_file_name}"></a>
                                    				<div>${img.product_name} </div>
                                    				<div>${img.product_price}원 </div>
												</td>
                                    			<c:if test = "${st.count % 3 == 0 || st.last}">
                                    		<tr>
                                    		</c:if>
										</c:forEach>
                                    		</table>
                                    	</c:otherwise>
                                    </c:choose>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="account-orders" role="tabpanel" aria-labelledby="account-orders-tab">
                                    <div class="myaccount-orders">
                                        <h4 class="small-title">나의 주문내역</h4>
                                        <c:if test="${empty order}">
                                        	주문 내역이 없습니다.
                                        </c:if>
                                        <c:if test="${not empty order}">
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-hover">
                                                <tbody>
                                                    <tr>
                                                        <th>주문날짜</th>
                                                        <th>주문번호</th>
                                                        <th>상품</th>
                                                        <th>주문금액</th>
                                                        <th>상태</th>
                                                    </tr>
                                                    <c:forEach items = "${order}" var = "order"  varStatus="st">
                                                    <c:choose>
                                                    	<c:when test="${order.order_detail_number_count == '1'}">
                                                    	 <tr>
                                                        <td>${order.order_date}</td>
                                                        <td><a class="account-order-id" href="/flower/order/detailorderpage/${order.order_detail_number}">${order.order_detail_number}</a></td>
                                                        <td>
                                                        	<ul class = "orders_product_info">
                                                        		<li class = 'orders_product_info_img'>
                                                        			<div class = 'wrphover'>
                                                        				<img src = '/flower/resources/product/imgs/list/${order.product_image_file_name}'>
                                                        			</div>
                                                        		</li>
                                                        		<li class = "orders_product_info_num">
                                                        			<div>${order.product_name}</div>
                                                        			<div>
                                                        				<span>수량: </span>
                                                        				<strong>${order.order_product_quantity}</strong>
                                                        				개
                                                        			</div>
                                                        			<div>
                                                        			</div>
                                                        		</li>	
                                                       		</ul>
                                                        </td>
                                                        <td>${order.order_product_price * order.order_product_quantity}원</td>
                                                        <td>${order.order_state}</td>
                                                    </tr>
                                                    	</c:when>
                                                    	<c:otherwise>
                                                    		<tr>
                                                       			 <td>${order.order_date}</td>
                                                       			 <td><a class="account-order-id" href="/flower/order/detailorderpage/${order.order_detail_number}">${order.order_detail_number}</a></td>
                                                        		<td>
                                                        			<ul class = "orders_product_info">
                                                        			<li class = 'orders_product_info_img'>
                                                        			<div class = 'wrphover'>
                                                        				<img src = '/flower/resources/product/imgs/list/${order.product_image_file_name}'>
                                                        			</div>
                                                        			</li>
                                                        			<li class = "orders_product_info_num">
                                                        				<div>${order.product_name}</div>
                                                        				<div>
                                                        				<span>수량: </span>
                                                        				<strong>${order.order_product_quantity}</strong>
                                                        				개
                                                        			</div>
                                                        			<div>
                                                        				외 ${order.order_detail_number_count-1}개
                                                        			</div>
                                                        		</li>	
                                                       		</ul>
                                                        </td>
                                                        <td>${order.order_product_price * order.order_product_quantity}원</td>
                                                        <td>${order.order_state}</td>
                                                    </tr>
                                                    	</c:otherwise>
                                                    </c:choose>
                                                    </c:forEach>
                                                   
                                                </tbody>
                                            </table>
                                        </div>
                                        </c:if>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="account-inquiry" role="tabpanel" aria-labelledby="account-inquiry-tab">
                                    <div class="myaccount-orders (inquiry)">
                                    	<h4 class="small-title">나의 문의내역</h4>
                                    	<c:if test="${empty inquiries}">
                                        	문의 내역이 없습니다.
                                        </c:if>
                                        <c:if test="${not empty inquiries}">
                                    	<div class="table-responsive">
                                            <table class="table table-bordered table-hover">
                                                <tbody>
                                                    <tr>
                                                        <th>번호</th>
                                                        <th>제목</th>
                                                        <th>답변 여부</th>
                                                        <th>등록일</th>
                                                        <th>답변 보기</th>
                                                    </tr>
                                                    <c:forEach items = '${inquiries}' var = 'inquiry' varStatus="ist">
                                                    <tr>
                                                        <td>${ist.count}</td>
                                                        <td>${inquiry.inquiries_title}</td>
                                                        <td><c:if test = "${inquiry.inquiries_answer_yn eq '1'}">Y</c:if>
                                                        	<c:if test = "${inquiry.inquiries_answer_yn eq '0'}">N</c:if>
                                                        </td>
                                                        <td>${inquiry.inquiries_register_date}</td>
                                                        <td><c:if test = "${inquiry.inquiries_answer_yn eq '1'}"><a href="#" class="btn btn-dark"><span>View</span></a></c:if>	<!-- 답변여부가 y면 히든 풀기 -->
                                                        </td>
                                                    </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                        </c:if>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="account-address" role="tabpanel" aria-labelledby="account-address-tab">
                                    <div class="myaccount-orders (address)">
                                    	<h4 class="small-title">나의 배송지</h4>
                                    	<button class = 'btn rightbtn btn-primary' id = 'add-address' data-bs-toggle = 'modal' data-bs-target="#addAddressForm" ><span>배송지 추가</span></button>
                                    	<div class="modal fade" id="addAddressForm" tabindex="-1" aria-labelledby="addAddressFormlabel" data-bs-keyboard="false" 	data-bs-backdrop="static" aria-hidden="true">
  											<div class="modal-dialog">
   											 	<div class="modal-content">
      												<div class="modal-header">
       													 <h5 class="modal-title" id="addAddressFormlabel">배송지 추가/수정</h5>
      													  <button type="button" id = 'closeForm' class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
     												 </div>
     											 <div class="modal-body">
     											 <form id = 'in_Address' method='post' action = '/flower/mypage/in_Address'>
      												<div>
      													<input type = hidden id = 'address_id' name = 'address_id'>
      													<h5 class = 'stitle'>자주쓰는 배송지는 최대 10개까지 등록할 수 있습니다.</h5>
      													<div class = 'table_row'>
      														<ul class = 'tr'>
      															<li class = 'th'>그룹</li>
      															<li class = 'td'>
      																<div>
      																	<select id = 'selectType' >
      																		<option value = '집'>집</option>
      																		<option value = '회사'>회사</option>
      																		<option value = '기타'>기타</option>
      																	</select>
      																</div>
      																<input id = 'addressType' type = 'text' name = 'type' class = 'mb5' size = '20' maxlength='20' value = '집' readonly>
      																<div>
      																	<label>
      																		<input type = 'checkbox' name='default_delivery_address' value = '1' id = 'default_delivery_address'>
      																		<span>기본 배송지로 지정</span>
      																	</label>
      																</div>
      															</li>
      														</ul>
      														<ul class = 'tr'>
      															<li class = 'th'>받는 분</li>
      															<li>
      																<input id = 'recipient_name' name = 'recipient_name' type = 'text' size = '20'>
      																<input type = 'hidden' value = '${member.member_id}' name = 'member_id'>
      															</li>
      														</ul>
      														<ul class = 'tr'>
      															<li class = 'th'>주소</li>
      															<li>
      																<input type = 'text' readonly style = 'width : 90px;' id = 'Mypage-postcode' name = 'postal_code'>
      																<button type = 'button' style = 'height: 40px; border: 1px solid #d9d9d9;' id = 'searchpost' name = 'postal_code'>우편번호 검색</button>
      																<div>
      																	<input class = size100 type = 'text' id = 'Mypage-address' name = 'recipient_address' readonly>
      																</div>
      																<div>
      																	<input class = size100 type = 'text' id = 'Mypage-detailaddress' name = 'recipient_detailaddress' placeholder = '상세 주소'>
      																</div>
      															</li>
      														</ul>
      														<ul class = 'tr'>
      															<li class = 'th'>휴대폰번호</li>
      															<li>
      																<input type = 'text' id = 'recipient_tel' name = 'recipient_tel' placeholder = '-포함'>
      															</li>
      														</ul>
      													</div>	
     											 	</div>
     											 </form>
     										 </div>
    										  <div class="modal-footer">
     											   <button type="button" class="btn btn-primary" id = 'saveaddress'>추가하기</button>
     										 </div>
    										</div>
 										 </div>
									</div>
                                    	<c:if test="${empty memberaddress}">
                                    	<div>
                                        	나의 배송지가 없습니다.
                                        </div>
                                        </c:if>
                                        <c:if test="${not empty memberaddress}">
                                    	<div>
                                            <table class="table table-bordered table-hover">
                                                <tbody>
                                                    <tr>
                                                        <th>구분</th>
                                                        <th>받는분</th>
                                                        <th>주소</th>
                                                        <th>연락처</th>
                                                        <th>관리</th>
                                                    </tr>
                                                    <c:forEach items = '${memberaddress}' var = 'address'>
                                                    <tr>
                                                        <td>${address.type}</td>
                                                        <td>${address.recipient_name}</td>
                                                        <td>
                                                        <span>[${address.postal_code}]</span><span>${address.recipient_address}</span><br/><span>${address.recipient_detailaddress}</span></td>
                                                        <td>${address.recipient_tel}</td>
                                                        <td><a class="updateAddress btn btn-dark"><span>수정</span></a>
                                                        	<a class="deleteAddress btn btn-light"><span>삭제</span></a>
                                                        </td>
                                                    </tr>
                                                    <input type = 'hidden' value = '${address.address_id}' name = 'address_id' id = "mypage_address_id">
                                                    <input type = 'hidden' value = '${address.default_delivery_address}' name = 'mypage_default_delivery_address' id = "mypage_default_delivery_address">
                                                   </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                         </c:if>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="account-password" role="tabpanel" aria-labelledby="account-password-tab">
                                    <div class="myaccount-details">
                                        <form action="/flower/mypage/pwUdate" id = "pwUpdate" class="myaccount-form">
                                            <div class="myaccount-form-inner">
                                                <div class="single-input">
                                                    <label>현재 비밀번호</label>
                                                    <input type="password" name = 'curpassword' id = 'curpassword'>
                                                    <input type='hidden' value = '${member.member_password}' id = 'memberpass'>
                                                </div>
                                                <div class="single-input">
                                                    <label>변경할 비밀번호</label>
                                                    <input type="password" name = 'newpassword' id = 'newpassword'>
                                                </div>
                                                <div class="single-input">
                                                    <label>변경할 비밀번호 확인</label>
                                                    <input type="password" name = 'newpasswordconfirm' id = 'newpasswordconfirm'>
                                                </div>
                                                <div class="single-input passwordsubmit">
                                                    <button class="btn btn-custom-size lg-size btn-pronia-primary" type="button" id = "pwUpdateBt">
                                                        <span>변경하기</span>
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="account-withdrwal" role="tabpanel" aria-labelledby="account-withdrwal-tab">
                                    <h3>회원탈퇴</h3>
                                    <p>꽃물주 서비스를 이용 해주셔서 감사합니다</p>
                                    <dl id = 'infobox'>
                                    	<dt>탈퇴를 하시면</dt>
                                    	<dd>" 꽃물주에서 이용하신 모든 회원정보가 삭제되며, 더 이상 서비스를 이용할 수 없게 됩니다."<br>
                                    		" 또한 삭제된 정보는 복구할 수 없으며, 탈퇴에 대한 다른 궁금한 사항이 있으시면 1:1문의를 통해 안내 받으실 수 있습니다."<br>
                                    		" * 회원 탈퇴 시 동일 이메일로 재가입이 불가합니다."
                                    	</dd>
                                    </dl>
                                    <dl class="frm">
                                    	<dt>탈퇴 하시려는 사유를 작성해주세요. 꽃물주 서비스 운영에 많은 도움이 됩니다.</dt>
                                    	<dd>
                                    		<label>
                                    			<textarea class = 'frmbox wfull h100' placeholder = '탈퇴 사유를 작성해주세요.'></textarea>
                                    		</label>
                                    	</dd>
                                    </dl>
                                    <div class = 'tc'>
                                    	<a href="/flower/flower_main.jsp">서비스 계속 이용하기</a>
                                    	<button type = "button" id = "withdrawal">탈퇴하기</button>
                                    </div>
                                </div>
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
    <script src="/flower/resources/assets/js/mypage/mypage.js"></script>

    <%@include file="/flower_footer.jsp" %>