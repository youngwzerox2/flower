package com.flower.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flower.dao.ShoppingCartDAO;
import com.flower.vo.ShoppingCartVO;

@Service("shoppingCartService")
public class ShoppingCartServiceImpl implements ShoppingCartService{

	private ShoppingCartDAO shoppingCartDao;
	
	public ShoppingCartServiceImpl() {}//constructor
	
	@Autowired
	public ShoppingCartServiceImpl(ShoppingCartDAO shoppingCartDao) {
		this.shoppingCartDao = shoppingCartDao;
	} //constructor(..)
	
	
	// 장바구니 담기
	@Override
	public Integer addCart(ShoppingCartVO scvo) {
		return shoppingCartDao.addCart(scvo);
	}

}
