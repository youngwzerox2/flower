package com.flower.dao;

import java.util.List;
import java.util.Map;

import com.flower.vo.LoveVO;
import com.flower.vo.ProductVO;

public interface ProductDAO {

	// 상품 목록 (selectList)
	List<ProductVO> getCateProdList(ProductVO vo);
	
	// 상품 목록 필터링(초보자용, 반려동물안심, 일조량 + 정렬기준)
	List<ProductVO> getFilteredProdList(ProductVO vo);
	
	// 상품목록: (로그인한 멤버의) 찜 목록 조회
	List<LoveVO> getLoveList(Integer memberId);
	
	// 선택한 카테고리의 상품개수 Read for paging
	Integer getProdCateQuan(ProductVO vo);
	
	
	// 상품 상세 페이지 Read (selectOne)
	ProductVO getProd(ProductVO vo);

	// 상품 찜 update
	Integer updateLove(LoveVO vo);
	
	// 상품상세: (로그인한 멤버의)찜 상태 조회
	Integer isLove(LoveVO vo);
	
	//메인페이지 꽃말 키워드 가져오기
	List<ProductVO> flowerkeyword();
	
} //interface ProductDAO
