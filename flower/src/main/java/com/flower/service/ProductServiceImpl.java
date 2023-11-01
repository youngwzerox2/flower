package com.flower.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flower.dao.ProductDAO;
import com.flower.dao.ProductDAOImpl;
import com.flower.vo.ProductVO;

@Service("productService")
public class ProductServiceImpl implements ProductService{

	private ProductDAOImpl productDao;
	
	public ProductServiceImpl() {} // constructor
	
	@Autowired
	public ProductServiceImpl(ProductDAOImpl productDao) {
		this.productDao = productDao;
	} // constructor
	
	
	@Override
	public List<ProductVO> getAllProdList() {
		
		return null;
	}

	@Override
	public List<ProductVO> getCateProdList(ProductVO vo) {
		productDao.getCateProdList(vo);
		return null;
	}


}
