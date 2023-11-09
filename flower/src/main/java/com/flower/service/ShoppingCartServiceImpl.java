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

	// 장바구니에 담긴 상품들의 가격 총합
	@Override
	public Integer getCartTotal(MemberVO mvo) {
		return shoppingCartDao.getCartTotal(mvo);
	}

	// 장바구니에 담긴 상품 수량 변경
	@Override
	public Integer updateCartProdQuan(ShoppingCartVO scvo) {
		return shoppingCartDao.updateCartProdQuan(scvo);
	}
	
	// 장바구니에 일부 상품만 선택(update)
	@Override
	public Integer selectCartProd(ShoppingCartVO scvo) {
		shoppingCartDao.selectCartProd(scvo);
		return null;
	}
	

	// 장바구니에 담긴 상품 삭제
	@Override
	public Integer deleteCartProd(ShoppingCartVO scvo) {
		// shoppingCartDao.deleteCartProd(scvo);
		return shoppingCartDao.deleteCartProd(scvo);
	}
	
	// 장바구니 전체 삭제
	@Override
	public void deleteAllCart(MemberVO mvo) {
		shoppingCartDao.deleteAllCart(mvo);
	}



} //class ShoppingCartServiceImpl
