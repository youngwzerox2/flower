package com.flower.service;

import java.util.List;

import com.flower.vo.LoveVO;
import com.flower.vo.MemberVO;
import com.flower.vo.ProductVO;

public interface ProductService {
	

	// 상품 목록 가져오기
	List<ProductVO> getCateProdList(ProductVO vo);
	
	
	// 상품목록: 로그인한 멤버의 찜한 상태 반영(찜한 목록)
	List<LoveVO> getLoveList(Integer memberId);
	
	// 클릭한 카테고리별 상품개수 Read for paging
	Integer getProdCateQuan(ProductVO vo);
	
	// 상품 목록 필터링(초보자용, 반려동물안심, 일조량 + 정렬기준)
	List<ProductVO> getFilteredProdList(ProductVO vo);
	
	
	// 상품 상세 페이지 가져오기
	ProductVO getProd(ProductVO vo);
		
	// 상품 찜 상태 조회
	Integer isLove(LoveVO vo);
	
	// 상품 찜 update
	Integer updateLove(LoveVO vo);
	
	//메인페이지 꽃말 키워드 가져오기
	List<ProductVO> flowerkeyword();
	
}
