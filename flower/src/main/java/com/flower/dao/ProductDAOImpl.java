package com.flower.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.flower.vo.ProductVO;

@Repository("productDAO")
public class ProductDAOImpl {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<ProductDAO> getCateProdList(ProductVO vo){
		mybatis.selectList("getCateProdList", vo);
		return null;
	}
	
} //class ProductDAOImpl
