package com.flower.dao;

import com.flower.vo.ShoppingCartVO;

public interface ShoppingCartDAO {
	
	// 장바구니에 담기
	Integer addCart(ShoppingCartVO scvo);
	
	// 장바구니 불러오기
	
}
