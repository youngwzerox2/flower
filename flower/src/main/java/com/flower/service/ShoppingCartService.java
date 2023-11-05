package com.flower.service;

import com.flower.vo.ShoppingCartVO;

public interface ShoppingCartService {
	// 장바구니 담기
	Integer addCart(ShoppingCartVO scvo);
}
