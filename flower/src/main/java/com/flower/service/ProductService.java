package com.flower.service;

import java.util.List;
import java.util.Map;

import com.flower.vo.LoveVO;
import com.flower.vo.ProductVO;

public interface ProductService {
	

	// (클릭한 카테고리)상품 목록 가져오기 (전체 상품 목록 보기 포함)
	List<ProductVO> getCateProdList(ProductVO vo);
	
	// 클릭한 카테고리별 상품개수 Read
	Integer getProdCateQuan(ProductVO vo);
	
	// 상품 검색 결과 가져오기(목록)
	
	// 상품 상세 페이지 가져오기
	ProductVO getProd(ProductVO vo);
	
	// 상품 등록
	
	// 상품 수정
	
	// 상품 삭제
	
	// 상품 목록 필터링(초보자용, 반려동물안심, 일조량 + 정렬기준)
	List<ProductVO> getFilteredProdList(ProductVO vo);
	    
	
	// 상품 찜 상태 조회
	Integer isLove(LoveVO vo);
	
	// 상품 찜 update
	Integer updateLove(LoveVO vo);
	
	
}
