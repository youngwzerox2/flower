package com.flower.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		m.addAttribute("cartList", result);
		m.addAttribute("addressList", resul);
		return "order/order";
	}
	
	// 주문 상세 db insert
	@PostMapping("detailorder")
	public String detailorder(@ModelAttribute OrderTableListVo Listvo, HttpSession session, Model m){
		System.out.println(Listvo);
		List<OrderTableVO> orderList = Listvo.getListvo();
		String notbuyfromcart = Listvo.getNotbuyfromcart();
		String detail_number = orderList.get(0).getOrder_detail_number();
		MemberVO mvo = (MemberVO)session.getAttribute("member");
		
		if(notbuyfromcart.isEmpty()) {
			SCser.deleteAllCart(mvo);
			mvo.setMember_cart_quan(0);
		}
		OTser.insertOrder(orderList);
		return "redirect:detailorderpage/" + detail_number;
	}
	
	// 주문 상세페이지 이동
	@RequestMapping("detailorderpage/{detail_number}")
	public String detailorderpage(@PathVariable String detail_number,HttpSession session,  Model m ) {
		MemberVO mvo = (MemberVO)session.getAttribute("member");
		OrderTableVO OTvo = new OrderTableVO();
		OTvo.setMember_id(mvo.getMember_id());
		OTvo.setOrder_detail_number(detail_number);
		List<OrderTableVO> orderList = OTser.selectOrderListbydetailnumber(OTvo);
		System.out.println(orderList);
		m.addAttribute("orderList", orderList);
		return "order/detailorderpage";
	}
	
	// 상품 상세페이지에서 바로 주문하기
	@RequestMapping("detailproductorder")
	public String detailpageorder(HttpSession session, Model m, ShoppingCartVO SCvo) {
		MemberVO mvo = (MemberVO)session.getAttribute("member");
		List<MemberAddressVO> resul = MAser.selectMemberAddress(mvo);
		m.addAttribute("product", SCvo);
		m.addAttribute("addressList", resul);
		m.addAttribute("notbuyfromcart", 1);
		return "order/order";
	}
}
