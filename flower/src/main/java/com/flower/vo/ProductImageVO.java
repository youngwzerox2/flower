package com.flower.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductImageVO {

	private String product_image_file_name;
	private Integer product_id;
	private String product_image_flower_name;
	private String product_image_type;
	private String prodcut_image_froute;
}
