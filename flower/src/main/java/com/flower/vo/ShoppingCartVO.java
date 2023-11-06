package com.flower.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ShoppingCartVO {

	private Integer shopping_cart_id;
	private Integer member_id;
	private Integer product_id;
	private Integer shopping_cart_product_quantity;
	
	/** ProductVO, ProductImageVO 합침
	 * **/
	private String product_image_file_name;
	private String product_name;
	private Integer product_price;
	
	/** 합계 담을 변수*/
	private Integer total_cart;
}
