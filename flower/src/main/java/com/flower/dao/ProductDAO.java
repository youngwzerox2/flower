package com.flower.dao;

import java.util.List;
import java.util.Map;

import com.flower.vo.ProductVO;

public interface ProductDAO {

	// 상품 카테고리별 Read (selectList)
	List<ProductVO> getCateProdList(ProductVO vo);
	
	// 상품 상세 페이지 Read (selectOne)
	ProductVO getProd(ProductVO vo);

	// 상품 필터링
	List<ProductVO> filterProducts(Map<String, String> filterParams);

	
	
} //interface ProductDAO
