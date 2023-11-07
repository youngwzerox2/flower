package com.flower.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.flower.vo.MemberVO;
import com.flower.vo.ShoppingCartVO;

@Repository("shoppingCartDAO")
public class ShoppingCartDAOImpl implements ShoppingCartDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	// 장바구니에 담기
	@Override
	public Integer addCart(ShoppingCartVO scvo) {
		return mybatis.insert("ShoppingCartDAO.addCart", scvo);
	}

	
	// 장바구니에 담긴 상품 목록 불러오기
	@Override
	public List<ShoppingCartVO> getCartList(MemberVO mvo) {
		return mybatis.selectList("ShoppingCartDAO.getCartList", mvo);
	}

	// 장바구니에 담긴 상품들의 가격 총합
	@Override
	public Integer getCartTotal(MemberVO mvo) {
		return mybatis.selectOne("ShoppingCartDAO.getCartTotal", mvo);
	}

	// 장바구니에 담긴 상품 수량 변경
	@Override
	public Integer updateCartProdQuan(ShoppingCartVO scvo) {
		//Integer result = mybatis.update("ShoppingCartDAO.updateCartProdQuan", scvo);
		//System.out.println(result);
		return mybatis.update("ShoppingCartDAO.updateCartProdQuan", scvo);
	}
	
	
	
	
	
} //class ShoppingCartDAOImpl
