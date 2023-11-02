package com.flower.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.flower.service.LoveService;
import com.flower.service.OrderTableService;
import com.flower.vo.MemberVO;
import com.flower.vo.OrderTableVO;
import com.flower.vo.ProductVO;

@Controller
@RequestMapping("mypage")
public class MypageController {
	
	@Autowired
	LoveService Lser;
	@Autowired
	OrderTableService Oser;
	
	@RequestMapping("mypage1")
	public void myPage(HttpSession session, Model m) {
		MemberVO vo = (MemberVO)session.getAttribute("member");
		System.out.println(vo);
		List<ProductVO> im = Lser.selectLove(vo);
		List<OrderTableVO> om = Oser.selectOrderList(vo);
		m.addAttribute("product",im);
		System.out.println(om);
		m.addAttribute("order",om);
	}
	
	@RequestMapping("inquiryList")
	@ResponseBody
	public void inquiryList() {
		
	}

}
