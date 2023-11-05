package com.flower.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.flower.service.ShoppingCartService;
import com.flower.vo.MemberVO;
import com.flower.vo.ShoppingCartVO;

@Controller
public class ShoppingCartController {
	
	private ShoppingCartService shoppingCartService;
	
	public ShoppingCartController() {}//constructor
	
	@Autowired
	public ShoppingCartController(ShoppingCartService shoppingCartService) {
		this.shoppingCartService = shoppingCartService;
	}//constructor
	
	// 장바구니 담기
	@RequestMapping("/cart")
	@ResponseBody
	public Integer addCart(HttpSession sess, ShoppingCartVO scvo) {
		MemberVO mvo = (MemberVO)sess.getAttribute("member");
//		System.out.println("로그인 상태 확인: " + mvo);
		/** 로그인 상태 확인: 
		 * MemberVO(member_id=55, admin_status=false, 
		 * member_email=flower@flower.com, member_password=123asdf*, 
		 * member_name=데이지, member_register_date=2023-11-05, 
		 * member_leave_date=null, member_status=N)
		 * */
		scvo.setMember_id(mvo.getMember_id());
		return shoppingCartService.addCart(scvo);
		
//		System.out.println("쇼핑카트VO에 (어떻게) 담기나: " + scvo);
		/**
		 * ShoppingCartVO(shopping_cart_id=null, member_id=55, 
		 * product_id=1, shopping_cart_product_quantity=3)
		 * */		
	}
	
	@RequestMapping("/cart/{page}")
	public String viewPage(@PathVariable String page) {
		return "/cart/"+page;
	}
	
}
