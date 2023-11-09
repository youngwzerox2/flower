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
	 * 1) 전체 컨텐츠 수
	 * 2) 페이지당 출력될 컨텐츠 수
	 * 3) 총 페이지 수
	 * 4) 페이지당 출력될 페이지버튼 수
	 * **/
	
	private Integer totalContents;
	private Double contentsPerPage;
	private Integer totalPages;
	private Integer btnPerPage;

}
