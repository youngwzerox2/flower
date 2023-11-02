package com.flower.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemberProductImageVO {

		private String member_product_image_uuid;
		private String member_product_image_file_name;
		private String member_product_image_froute;
		private String reviews_id;
		private String inquiries_id;
		private Integer member_product_id;
	
}
