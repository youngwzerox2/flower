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

	// 장바구니에 일부 상품만 선택(update, toggle)
	@Override
	public Integer selectCartProd(ShoppingCartVO scvo) {
		// Integer chk = mybatis.selectOne("ShoppingCartDAO.isSelected", scvo);
		// System.out.println("selected: " + chk);
		
		// JavaScript(ajax)에서 check박스 클릭(선택)하면 scvo.setSeleted에 값(1)이 담긴다.
		// JavaScript(ajax)에서 check박스 선택해제하면 scvo.setSeleted에 값(0)이 담긴다.
		Integer chk = scvo.getSelected();
		
		Integer sel 	= 0;
		Integer unsel 	= 0;
		 
		// 선택된 상품에 대해 DB selected 컬럼에 true(1)값 입력
		if(chk == 1) {
			// System.out.println("sql 결과(선택): " + sel);
			sel = mybatis.update("ShoppingCartDAO.selectCartProd", scvo);
			return sel;
		} else if (chk == 0) {
			// System.out.println("sql 결과(선택해제): " + unsel);
			unsel = mybatis.update("ShoppingCartDAO.unselectCartProd", scvo);
			return unsel;
		}
		
		return (sel == 1) ? sel : unsel;
		
	}
	
	// 장바구니에 담긴 상품 삭제
	@Override
	public Integer deleteCartProd(ShoppingCartVO scvo) {
//		Integer result = mybatis.delete("ShoppingCartDAO.deleteCartProd", scvo);
//		System.out.println("상품삭제SQL결과: " + result);
		return mybatis.delete("ShoppingCartDAO.deleteCartProd", scvo);
//		return null;
	}


	@Override
	public void deleteAllCart(MemberVO mvo) {
		mybatis.delete("ShoppingCartDAO.deleteAllCart",mvo);
	}
	
	

} //class ShoppingCartDAOImpl
