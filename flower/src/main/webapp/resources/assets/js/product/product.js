/*------ by Jin -------*/

$(function(){

	// 상품목록에서 검색필터(체크박스, 라디오 → class="product-filter-condition")를 선택한 후, '적용하기' 버튼을 눌렀을 때
	$('#product-filter-apply').click(function(e){
		 e.preventDefault();
		 e.stopPropagation();
		
		// 검색 조건을 담을 배열
		const condition = [];
		
		// 검색
		$('.product-filter-condition').each(function(){
			if($(this).hasClass('checked')){
				condition.push($(this).val());
				console.log("submit 클릭 시 checked된 값 넣어지는가: " + $(this).val());
			}
		});
		condition.push($('select[name=product_display_order] > option:selected').val());
		
		console.log("다 담겼..나?: " + condition); // 담김!! spring,pet_friendly,easy_care,dl,5
		
		
		
		$.ajax({
			type: 'post',
			url: '/flower/product/filtered',
			traditional: true,
			data: {
				filterCondition: condition
			},
			dataType: 'json',
			success: function(result){
				console.log("필터 적용 success");
				console.log("result: " + result);
				console.log(result);
				// tbody 비우기
				let afterFilterTbody = $('#afterFilterRemove');
				afterFilterTbody.empty();
				// console.log(result.length);
				if (result && result.length > 0) {
					for (content of result){
						let i = 0;
						let tr = $("<tr/>");
						let td = $("<td class='product-list-jin'/>").append("<a href=''>").text("test");
						console.log(content);
						/*****
						* div class="product-item"
						* div class="product-img"
						* <input type="hidden" name="${prod.product_id}" />
						* a href='<%=pjName%>/product/product-content?product_id=${productList.product_id}'
						*  <img class="primary-img" src="<%=pjName %>/resources/product/imgs/list/${prod.prod_imgs_lists[0]}" alt="${prod.product_name}1">
						*  <c:if test="${not empty prod.prod_imgs_lists[1]}">
						*    <img class="secondary-img" src="<%=pjName %>/resources/product/imgs/list/${prod.prod_imgs_lists[1]}" alt="${prod.product_name}2">
						*  </c:if>
						* <div class="product-add-action">
						*  <ul>
						*  <li>
					    * <!-- flower: 상품목록에서 찜 바로 담기 & 로그인한 회원이 이미 찜한 상태일 경우 표시 -->
<a id="love_content" data-tippy="Add to wishlist" data-tippy-inertia="true"	data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true"	data-tippy-theme="sharpborder">
<i class="pe-7s-like"></i>
</a>
</li>
<li>
<!-- flower: 상품목록에서 장바구니 바로 담기 --> <a id="addCart"
data-tippy="Add to cart" data-tippy-inertia="true"
data-tippy-animation="shift-away"
data-tippy-delay="50" data-tippy-arrow="true"
data-tippy-theme="sharpborder"> <i
class="pe-7s-cart"></i>
</a>
</li>
																		</ul>
																	</div>
																	<!-- <div class="product-add-action"> end -->
																</div>
																<!-- <div class="product-img"> end -->
																<div class="product-content">
																	<a class="product-name"
																		href="<%=pjName%>/product/product-content?product_id=${prod.product_id}">${prod.product_name}</a>
																	<div class="price-box pb-1">
																		<span class="new-price"><fmt:formatNumber
																				type="number" maxFractionDigits="3"
																				value="${prod.product_price}" /></span>
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
																</div><!-- <div class="product-content"> end -->
																
															</div>
															<!-- <div class="product-item"> end -->
														
													</td>
												</c:forEach>
												<c:if test="${st.count % 3 == 0 || st.last}">
													</tr>
												</c:if>
						******/
						tr.append(td);
						afterFilterTbody.append(tr);
						i++;
					}
				} else {
					fterFilterTbody.append("<tr><td style='text-align: center'><h1>조건에 맞는 상품이 존재하지 않습니다.</h1></td></tr>");
				}
			},
			error: function(err){
				console.log("필터 적용 failed");
			}
		});
		
	});
	
	// 검색 필터 조건(checkbox)을 클릭했을 때, 클래스에 checked가 이미 있는지 확인 후 add or remove 
	$('.product-filter-condition').click(function(){
		if($(this).hasClass('checked')) {
			$(this).removeClass("checked");
		} else {
			$(this).addClass("checked");
		}
		
	});
	
	
	// 검색 필터 조건(radio)을 클릭했을 때, 모든 라디오 버튼의 checked클래스를 지운 뒤
	// 선택한 조건에만 checked클래스를 추가한다.
	$('input:radio[name=light]').each(function(){
		$(this).click(function(){
			$('input:radio[name=light]').removeClass('checked');
			$(this).addClass("checked");
		});
	});
	
	// 정렬 조건(option) 클릭했을 때,
	// 선택된 정렬 조건에 checked 클래스를 추..가? 해본다???
	
	
	
}) // $(function(){}) end