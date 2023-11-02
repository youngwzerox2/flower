package com.flower.vo;

import java.io.File;
import java.io.IOException;
import java.util.Date;
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
	
	
	private Integer 	inventory_quantity;
	private Integer 	product_price;
	private String 		product_register_date;
	
	
	// 상품 이미지 (PRODUCT_IMAGE TABLE)
	/********************************
	 * foreign key: product_id
	 * product_image_type: 이미지 출력 위치
	 * 						① list: 상품목록(w270 h300)
	 * 						② main: 상품상세-메인(w570 h633)
	 * 						③ sub: 상품상세-서브(w570 h633) 
	 */
	private String  	product_image_file_name;
	private String		product_image_type;
	
	
	// test - 한 상품의 여러 이미지를 담아올 때: 배열 or 각 변수
	// result: 배열형에는 SQL 결과가 null값으로 담긴다. 
	// ☞ 원시자료형이어야 담기는 듯!(내 경우에는 String!)
	
	private String		prod_imgs_lists;
	private String[] 	prod_imgs_list_arr;
	private String 		prod_imgs_list1;
	private String 		prod_imgs_list2;
	
	public void setProd_imgs_lists(String prod_imgs_lists) {
		this.prod_imgs_lists = prod_imgs_lists;
		this.prod_imgs_list_arr = this.prod_imgs_lists.split(",");
		this.prod_imgs_list1 = this.prod_imgs_list_arr[0];
		if(prod_imgs_list_arr.length > 1) {
			this.prod_imgs_list2 = this.prod_imgs_list_arr[1];
			System.out.println("이곳은 VO: " + this.prod_imgs_list2);
		}
		
		
	} // setProd_imgs_list_arr
	
	
	/*********
	 * input type=file의 name값과 동일해야 한다.*/
	MultipartFile file;
	
	public void setFile(MultipartFile file) {
		
		this.file = file;
		
		// 업로드 파일 접근
		if(!file.isEmpty()) {
			// this.b_fname = file.getOriginalFilename();
			// this.b_fsize = file.getSize();
			
			// 실제 저장된 파일명 만들기
			// 기존 파일명과 동일할 경우 덮어쓰이는 일을 방지
			// Universally Unique IDentifier; 128-bit value
			// UUID uuid = UUID.randomUUID();
			// 추후에는 b_fname 빼세요. 왜냐면, 업로드 하는 파일 이름들에 특수기호 등이 붙어 안 깔끔한 경우 많아용 
			//this.b_realfname = uuid.toString() + "_" + b_fname;
			
			/**************************
			 * 아래 file은 import java.io.file 임!
			 * 사용자가 업로드한 파일이 저장될 경로 지정.
			 * 해당 파일은 resource 폴더 안에 있어야 사용자가 접근 가능하다.
			 * 추후에 아래의 리소스 경로는 웹서버 경로로 지정해야 한다.
			 * */
		
			//File f = new File("C:\\Springwork\\hFileBoard\\src\\main\\webapp\\resources\\upload\\"+b_realfname);
			
			// 아래 경로는 추후 웹서버 경로로 변경해야 함!(적어도, 테스트하는 사람의 컴퓨터의 경로와 매치시켜야 함)
			File f = new File("C:\\Users\\ict0314\\git\\flower\\flower\\src\\main\\webapp\\resources\\product\\imgs\\" + "");
			
			try {
				file.transferTo(f);
			} catch(IllegalStateException e) {
				e.printStackTrace();
			} catch(IOException e) {
				e.printStackTrace();
			}
		} // if (!file.isEmpty)
	} // setFile
	
	
} //class ProductVO
