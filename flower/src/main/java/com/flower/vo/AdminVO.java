package com.flower.vo;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AdminVO {
	
	/**
	 * 회원 정보
	 * */
	private Integer member_id;				// 회원 ID
	private boolean admin_status;			// 관리자여부
	private String member_email;			// 회원 email
	private String member_name;				// 회원 이름
	private String member_register_date;	// 회원 가입일
	private String member_leave_date;		// 회원 탈퇴일
	private String member_status;			// 회원 상태
	private String reports_cnt;				// 신고횟수
	private String report_yn;				// 신고여부
	private String report_contents;			// 신고내용
	private String reports_date;			// 신고일
	
	/**
	 * 상품 정보
	 * */
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
	private MultipartFile file;					// 파일
	
	public MultipartFile getFile() {
		return file;
	}
	
	public void setFile(MultipartFile file) {
		this.file = file;
		
		// 업로드 파일이 있는 경우
		if(! file.isEmpty()) {
			
			File f = new File("C:\\Users\\ict0314\\git\\flower\\flower\\src\\main\\webapp\\resources\\product\\imgs\\" + getProduct_image_file_name());
			
			try {
				file.transferTo(f);
			} catch (Exception e) {
				System.out.println("파일 저장 중 에러 : " + e.getMessage());
				e.printStackTrace();
			}
		}
		
	}
}
