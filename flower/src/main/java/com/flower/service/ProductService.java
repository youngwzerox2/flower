package com.flower.service;

import java.util.List;

import com.flower.vo.ProductVO;

public interface ProductService {
	
	// 전체 상품 목록 가져오기
	List<ProductVO> getAllProdList();
	
	
	// 클릭한 카테고리 상품 목록 가져오기
	List<ProductVO> getCateProdList(ProductVO vo);
	
	// 상품 검색 결과 가져오기(목록)
	
	// 상품 상세 페이지 가져오기
	
	// 상품 등록
	
	// 상품 수정
	
	// 상품 삭제
	
}