package com.flower.dao;

import java.util.List;

import com.flower.vo.LoveVO;
import com.flower.vo.ProductVO;

public interface ProductDAO {

	// 상품 카테고리별 Read (selectList)
	List<ProductVO> getCateProdList(ProductVO vo);
	
	// 상품 상세 페이지 Read (selectOne)
	ProductVO getProd(ProductVO vo);

	// 상품 찜 update
	Integer updateLove(LoveVO vo);
	
	// 상품 찜 상태 조회
	Integer isLove(LoveVO vo);
	
} //interface ProductDAO
