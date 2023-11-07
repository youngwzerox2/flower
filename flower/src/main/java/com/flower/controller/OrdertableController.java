package com.flower.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flower.service.MemberAddressService;
import com.flower.service.ShoppingCartService;
import com.flower.vo.MemberAddressVO;
import com.flower.vo.MemberVO;
import com.flower.vo.ShoppingCartVO;

@Controller
@RequestMapping("order")
public class OrdertableController {

	@Autowired
	ShoppingCartService SCser;
	@Autowired
	MemberAddressService MAser;
	
	
	@RequestMapping("orderInfo")
	public String orderInfo(HttpSession session, Model m) {
		MemberVO mvo = (MemberVO)session.getAttribute("member");
		List<ShoppingCartVO> result = SCser.getCartList(mvo);
		List<MemberAddressVO> resul = MAser.selectMemberAddress(mvo);
		m.addAttribute("cartList", result);
		m.addAttribute("addressList", resul);
		return "order/order";
	}
	
}
