package com.flower.service;

import java.util.List;

import com.flower.vo.MemberVO;
import com.flower.vo.ShoppingCartVO;

public interface ShoppingCartService {
	// 장바구니 담기
	Integer addCart(ShoppingCartVO scvo);
	
	// 장바구니에 담긴 상품 목록 불러오기
	List<ShoppingCartVO> getCartList(MemberVO mvo);
	
	// 장바구니에 담긴 상품들의 가격 총합
	Integer getCartTotal(MemberVO mvo);
	
} //interface ShoppingCartService
