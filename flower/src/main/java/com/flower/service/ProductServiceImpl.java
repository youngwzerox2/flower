package com.flower.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flower.dao.ProductDAO;
import com.flower.dao.ProductDAOImpl;
import com.flower.vo.LoveVO;
import com.flower.vo.ProductVO;

@Service("productService")
public class ProductServiceImpl implements ProductService{

	private ProductDAO productDao;
	
	public ProductServiceImpl() {} // constructor
	
	@Autowired
	public ProductServiceImpl(ProductDAO productDao) {
		this.productDao = productDao;
	} // constructor
	
	

	// 선택된 카테고리 상품 목록
	@Override
	public List<ProductVO> getCateProdList(ProductVO vo) {
//		System.out.println("service called!: " + vo);
		return productDao.getCateProdList(vo);
	}

	
	// 선택한 카테고리의 상품개수
	@Override
	public Integer getProdCateQuan(ProductVO vo) {
		return productDao.getProdCateQuan(vo);
	}
		
		
	// 상품 상세 페이지
	@Override
	public ProductVO getProd(ProductVO vo) {
		return productDao.getProd(vo);
	}


	// 상품 찜 update
	@Override
	public Integer updateLove(LoveVO vo) {
		Integer result = productDao.updateLove(vo);
		// System.out.println("dao에서 넘어온 값: " + result);
		return result;
	}
	
	// 상품 찜 상태 조회
	@Override
	public Integer isLove(LoveVO vo) {
		return productDao.isLove(vo);
	}

	
	// 상품 목록 필터링(초보자용, 반려동물안심, 일조량 + 정렬기준)
	@Override
	public List<ProductVO> getFilteredProdList(ProductVO vo) {
		return productDao.getFilteredProdList(vo);
	}

	// 상품목록: 로그인한 멤버의 찜한 상태 반영(찜한 목록)
	@Override
	public List<LoveVO> getLoveList(Integer memberId) {
		return productDao.getLoveList(memberId);
	}

	@Override
	public List<ProductVO> flowerkeyword() {
		return productDao.flowerkeyword();
	}

	


}
