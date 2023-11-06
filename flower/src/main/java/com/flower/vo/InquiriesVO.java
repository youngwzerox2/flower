package com.flower.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class InquiriesVO {
	
	private String inquiries_id;
	private int member_id;
	private int product;
	private String inquiries_category;
	private String inquiries_title;
	private String inquiries_register_date;
	private String inquiries_cotent;
	private String inquiries_answer_content;
	private int inquiries_answer_yn;
	private String option1;
	private String option2;
	private String option3;
	
}
