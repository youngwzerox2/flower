package com.flower.vo;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ProductVO {
	private String 		product_id;
	private String 		cate_id;
	private String 		product_name;
	
	// 상품 설명(text가 아닌 이미지파일명/경로)
	private String 		product_content;
	
	
	// 상품 검색 필터 대상
	/********************************
	 * 
	 * product_keyword: 꽃말 분류 키워드(우정, 도전 등) 
	 * blooming_season: 개화시기(봄SP, 여름SM, 가을F, 겨울W)
	 * blooming_time: 	개화시간(낮D/밤N)
	 * pet_friendly: 	반려동물친화여부- T(친화적)/F(반친화적==위험)
	 * easy_care: 		초보자용- T/F
	 * product_light: 	일조량-직광(DL)/간접광(IDL)/그늘(SH)/일조량영향적음(NM)
	 *  
	 * ******************************/
	private String 		product_keyword;
	private String 		blooming_season;
	private String 		blooming_time;
	private boolean 	pet_friendly;
	private boolean 	easy_care;
	private String	 	product_light;
	
	/**** 검색 필터 적용시 사용할 변수
	 * product_type				: 검색 필터를 적용한 페이지의 카테고리(검색 필터는 상품 목록에서만 나타남)
	 * product_display_order	: 1)기본정렬, 2)판매량순, 3)리뷰많은순, 4)가격높은순, 5)가격낮은순
	 * ******/
	
	private String		product_type;
	private Integer		product_display_order;
	
	
	private Integer 	inventory_quantity;
	private Integer 	product_price;
	private String 		product_register_date;
	
	
	// 상품 이미지 (PRODUCT_IMAGE TABLE)
	/********************************
	 * foreign key: product_id
	 * product_image_type: jpg, png 등
	 * product_image_froute: 이미지 내용에 따른 폴더 위치
	 * 						① list: 상품목록(w270 h300)
	 * 						② main: 상품상세-메인(w570 h633)
	 * 						③ sub: 상품상세-서브(w570 h633) 
	 * 						④ guide: 상품설명(키우는 방법. 사이즈 미정. 단, w960 이하)
	 */
	
	private String  	product_image_file_name;
	 private String		product_image_type;
	private String		product_image_froute;
	
	
	// group_concat으로 담겨온 값을 배열로 변환하여 담을 변수
	// 파일명, 경로(guide, main, sub, list), 파일유형(jpg, png등)
	private String[]	prod_imgs_lists;
	private String		prod_img_list;
	private String[]	prod_imgs_froutes;
	private String[]	prod_imgs_types;
	private String		prod_img_main;
	private String[]	prod_imgs_sub;
	private String[]	prod_imgs_guide;
	
	
	// 카테고리별 상품 개수
	private Integer		prod_cate_quan;
	
	// 클릭한 페이지 넘버
	private Integer		pageNumber;
	
	public void setPageNumber() {
		this.pageNumber -= 1;
	}
	// group_concat으로 담겨온 이미지 파일명을 배열로 변환
	public void setProduct_image_file_name(String product_image_file_name) {
		this.product_image_file_name = product_image_file_name;
		this.prod_imgs_lists = product_image_file_name.split(",");
	} //setProd_imgs_list_arr
	
	public void setProd_imgs_sub(String prod_imgs) {
		this.prod_imgs_sub = prod_imgs.split(",");
	} // setProd_imgs_sub()
	
	public void setProd_imgs_guide(String prod_imgs) {
		this.prod_imgs_guide = prod_imgs.split(",");
	} //setProd_imgs_guide()
	
	// group_concat으로 담겨온 이미지 경로를 배열로 변환
	public void setProduct_image_froute(String product_image_froute){
		this.product_image_froute = product_image_froute;
		this.prod_imgs_froutes = product_image_froute.split(",");
	} //setProduct_image_fRoute
	
	// group_concat으로 담겨온 이미지 유형(jpg, png 등)을 배열로 변환
//	public void setProduct_image_type(String prodcuct_image_type) {
//		this.product_image_type = prodcuct_image_type;
//		this.prod_imgs_types = product_image_type.split(",");
//	} //setProduct_image_type
	
	
	
	
	
	
} //class ProductVO
