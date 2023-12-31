package com.flower.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class OrderTableVO {

	private Integer order_id; 
	private Integer product_id;
	private Integer member_id;
	private Integer order_product_price;
	private String order_detail_number;
	private String order_date;
	private String recipient_name;
	private String postal_code;
	private String recipient_address;
	private String recipient_tel;
	private Integer order_product_quantity;
	private String order_state;
	
	// 상품 이미지 (PRODUCT_IMAGE TABLE)
	private String product_image_file_name;
	
	// 상품 이름	(PRODUCT TABLE)
	private String product_name;
	
	// 상품 개수
	private String order_detail_number_count;
	
	
}
