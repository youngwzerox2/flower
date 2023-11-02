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
}
