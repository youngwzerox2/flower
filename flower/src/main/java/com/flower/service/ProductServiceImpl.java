package com.flower.service;

import java.util.List;

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
	
	
	@Override
	public List<ProductVO> getAllProdList() {
		
		return null;
	}

	// 선택된 카테고리 상품 목록
	@Override
	public List<ProductVO> getCateProdList(ProductVO vo) {
//		System.out.println("service called!: " + vo);
		return productDao.getCateProdList(vo);
	}

	// 상품 상세 페이지
	@Override
	public ProductVO getProd(ProductVO vo) {
		return productDao.getProd(vo);
	}

	// 상품 찜 update
	@Override
	public Integer updateLove(LoveVO vo) {
		
		return productDao.updateLove(vo);
	}


}
