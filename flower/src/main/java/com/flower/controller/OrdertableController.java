package com.flower.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flower.service.MemberAddressService;
import com.flower.service.OrderTableService;
import com.flower.service.ShoppingCartService;
import com.flower.vo.MemberAddressVO;
import com.flower.vo.MemberVO;
import com.flower.vo.OrderTableListVo;
import com.flower.vo.OrderTableVO;
import com.flower.vo.ShoppingCartVO;

@Controller
@RequestMapping("order")
public class OrdertableController {

	@Autowired
	ShoppingCartService SCser;
	@Autowired
	MemberAddressService MAser;
	@Autowired
	OrderTableService OTser;
	
	
	@RequestMapping("orderInfo")
	public String orderInfo(HttpSession session, Model m) {
		MemberVO mvo = (MemberVO)session.getAttribute("member");
		List<ShoppingCartVO> result = SCser.getCartList(mvo);
		List<MemberAddressVO> resul = MAser.selectMemberAddress(mvo);
		System.out.println(result);
		m.addAttribute("cartList", result);
		m.addAttribute("addressList", resul);
		return "order/order";
	}
	
	@PostMapping("detailorder")
	public String detailorder(@ModelAttribute OrderTableListVo Listvo, Model m){
		
		List<OrderTableVO> orderList = Listvo.getListvo();
		String detail_number = orderList.get(0).getOrder_detail_number();
		OTser.insertOrder(orderList);
		
		return "redirect:detailorderpage/" + detail_number;
	}
	
	@RequestMapping("detailorderpage/{detail_number}")
	public String detailorderpage(@PathVariable String detail_number,HttpSession session,  Model m ) {
		MemberVO mvo = (MemberVO)session.getAttribute("member");
		OrderTableVO OTvo = new OrderTableVO();
		OTvo.setMember_id(mvo.getMember_id());
		OTvo.setOrder_detail_number(detail_number);
		System.out.println(OTvo);
		List<OrderTableVO> orderList = OTser.selectOrderListbydetailnumber(OTvo);
		m.addAttribute("orderList", orderList);
		System.out.println(orderList);
		return "order/detailorderpage";
	}
}
