package com.flower.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.flower.vo.ProductVO;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<ProductVO> getCateProdList(ProductVO vo){		
		return mybatis.selectList("productDAO.getCateProdList", vo);
	}
	
} //class ProductDAOImpl
