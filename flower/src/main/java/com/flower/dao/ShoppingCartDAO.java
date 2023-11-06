package com.flower.dao;

import java.util.List;

import com.flower.vo.MemberVO;
import com.flower.vo.ShoppingCartVO;

public interface ShoppingCartDAO {
	
	// 장바구니에 담기
	Integer addCart(ShoppingCartVO scvo);
	
	// 장바구니에 담긴 상품 목록 불러오기
	List<ShoppingCartVO> getCartList(MemberVO mvo);
	
	Integer getCartTotal(MemberVO mvo);
	
}// interface ShoppingCartDAO
