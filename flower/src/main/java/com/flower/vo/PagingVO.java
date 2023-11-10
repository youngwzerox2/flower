package com.flower.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PagingVO {
	
	/***********
	 * by 최진화
	 * 상품, 리뷰, 문의 등의 페이징을 위한 VO
	 * 1) Integer totalContents:		전체 컨텐츠 수
	 * 2) Double contentsPerPage:		페이지당 출력될 컨텐츠 수 (SQL문에 넘겨줄 변수)
	 * 3) Integer totalPages:			총 페이지 수
	 * 4) Integer btnPerPage:			페이지당 출력될 페이지버튼 수
	 * 5) Integer pageNumber:			클릭 시 넘어올 페이지 번호
	 * 6) Integer firstRow:				클릭한 페이지에 출력될 첫번재 컨텐츠id (SQL문에 넘겨줄 변수)
	 * 7) Integer currentPage:			현재 화면에 출력되고 있는 페이지
	 * 8) Integer prevPage:				현재 화면에서 출력되는 페이지 버튼보다 앞쪽에 있는 페이지 
	 * 9) Integer nextPage:				현재 화면에서 출력되는 페이지 버튼보다 뒤쪽에 있는 페이지
	 * **/
	
	private Integer totalContents;
	private Double 	contentsPerPage;
	private Integer totalPages;
	private Integer btnPerPage;
	private Integer pageNumber;
	private Integer firstRow;
	private Integer currentPage;
	private Integer prevPage;
	private Integer nextPage;
	
	/****** 페이징을 사용할 곳의 각 id ******/
	private Integer product_id;
	private String 	review_id;
	private Integer question_id;
	
	
	public void setTotalPages() {
		this.totalPages = (int)Math.ceil(this.totalContents/ this.contentsPerPage);
	}

}
