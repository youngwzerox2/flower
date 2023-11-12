package com.flower.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AdminVO {
	
	/**
	 *  *************************************************************
     *  ************************** 회원 정보 ************************** 
     *  ************************************************************* 
     *  */
	private Integer member_id;					// 회원 ID
	private boolean admin_status;				// 관리자여부
	private String member_email;				// 회원 email
	private String member_name;					// 회원 이름
	private String member_register_date;		// 회원 가입일
	private String member_leave_date;			// 회원 탈퇴일
	private String member_status;				// 회원 상태
	private String reports_cnt;					// 신고횟수
	private String report_yn;					// 신고여부
	private String report_contents;				// 신고내용
	private String reports_date;				// 신고일
	private String admin_action_yn;				// 관리자조치여부
	private String current_recipient_address;	// 최근주소
	
	/**
	 *  *************************************************************
     *  ************************** 상품 정보 ************************** 
     *  ************************************************************* 
     *  */
	private Integer product_id;					// 상품고유번호
	private Integer cate_id;					// 카데고리ID
	private String product_name;				// 상품명
	private String product_content;				// 상품설명
	private String product_keyword;				// 상품키워드
	private String blooming_season;				// 개화시기
	private String blooming_time;				// 개화시간
	private String pet_friendly;				// 펫친화적인
	private String easy_care;					// 초보자식물
	private Integer inventory_quantity;			// 재고수량
	private Integer product_price;				// 상품가격
	private String product_register_date;		// 상품등록일
	private String product_state;				// 상품상태
	private String product_light;				// 상품채광
	private Integer likes;						// 좋아요 수
	private String product_image_file_name; 	// 상품이미지파일명
	private String product_image_flower_name; 	// 상품이미지이름(꽃이름)
	private String product_image_type; 			// 상품이미지타입
	private String product_image_froute; 		// 상품이미지경로
	
	/**
	 *  *************************************************************
     *  ************************** 문의 정보 ************************** 
     *  ************************************************************* 
     *  */
	private String inquiries_id;				// 문의번호
	private String inquiries_title;				// 문의제목
	private String inquiries_cotent;			// 문의내용
	private String inquiries_register_date;		// 문의등록일
	private String inquiries_answer_yn;			// 문의답변여부
	private String inquiries_answer_content;	// 문의답변내용
	
	/**
	 *  *************************************************************
     *  ************************** 리뷰 정보 ************************** 
     *  ************************************************************* 
     *  */
	private String reviews_id;					// 리뷰ID
	private String reviews_title;				// 리뷰제목
	private String reviews_content;				// 리뷰내용
	private String reviews_register_date;		// 리뷰등록일
	
	/**
	 *  *************************************************************
     *  ************************** 주문 정보 ************************** 
     *  ************************************************************* 
     *  */
	private String order_detail_number;			// 주문번호
	private String recipient_name;				// 수취인명
	private Integer total_order_cnt;			// 총 주문량 
	private Integer total_product_cnt;			// 총 주문상품량
	private Integer total_order_price;			// 총 주문액
	private String order_state;					// 주문상태
	private String order_date;					// 주문일	
	private String recipient_address;			// 주소
	private String recipient_tel;				// 연락처
	private Integer order_product_quantity;		// 주문상품수량
	private String order_cancel_reason;			// 주문취소사유
	private String admin_confirmation_yn;		// 관리자확인여부
	private String admin_confirmation_date;		// 관리자확인일자
	
	/**
	 *  *************************************************************
     *  ************************** 설정 정보 ************************** 
     *  ************************************************************* 
     *  */
	private String column_name;					// 설정이름
	private String column_comment;				// 설정내용
	
}
