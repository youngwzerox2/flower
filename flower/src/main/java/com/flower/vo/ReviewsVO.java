package com.flower.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReviewsVO {

	private String reviews_id;
	private String reviews_title;
	private String reviews_register_date;
	private String reviews_content;
	private String reports_contents;
	private String reports_date;
	private Integer member_id;
	private Integer product_id;
	private Integer reviews_score;
	private Integer reports_cnt;
}
