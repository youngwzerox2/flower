package com.flower.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flower.dao.ShoppingCartDAO;
import com.flower.vo.MemberVO;
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

	// 장바구니에 담긴 상품 목록 불러오기
	@Override
	public List<ShoppingCartVO> getCartList(MemberVO mvo) {
		return shoppingCartDao.getCartList(mvo);
	}

	@Override
	public Integer getCartTotal(MemberVO mvo) {
		return shoppingCartDao.getCartTotal(mvo);
	}
	
	

} //class ShoppingCartServiceImpl
