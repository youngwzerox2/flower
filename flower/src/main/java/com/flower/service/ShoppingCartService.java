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
	
	// 장바구니에 담긴 상품의 수량 변경
	Integer updateCartProdQuan(ShoppingCartVO scvo);
	
	// 장바구니에 일부 상품만 선택(update)
		Integer selectCartProd(ShoppingCartVO scvo);
	
	// 장바구니에 담긴 상품 삭제
	Integer deleteCartProd(ShoppingCartVO scvo);
	
	// 장바구니 전체 삭제
	void deleteAllCart(MemberVO mvo);
	
} //interface ShoppingCartService
