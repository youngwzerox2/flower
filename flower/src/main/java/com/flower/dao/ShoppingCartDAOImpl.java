package com.flower.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.flower.vo.ShoppingCartVO;

@Repository("shoppingCartDAO")
public class ShoppingCartDAOImpl implements ShoppingCartDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public Integer addCart(ShoppingCartVO scvo) {
		Integer result = mybatis.insert("ShoppingCartDAO.addCart", scvo);
		System.out.println("SQL1: " + result);
		return mybatis.insert("ShoppingCartDAO.addCart", scvo);
	}
	
}
