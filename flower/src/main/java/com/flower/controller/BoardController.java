package com.flower.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flower.dao.InquiriesDAO;
import com.flower.vo.InquiriesVO;
import com.flower.vo.MemberVO;

@Controller
@RequestMapping("/board/")
public class BoardController {
	
	@Autowired
	InquiriesDAO inquiries_dao;
	
	//목록출력
	@RequestMapping("product")
	public String product(InquiriesVO vo, Model model) {
		
		List<InquiriesVO> list = inquiries_dao.selectList();
		
		
		model.addAttribute("list", list);
		
		return "board/single-product";
	}
	
	//폼띄우기
	@RequestMapping("insert_form")
	public String insert_form() {
		
		return "board/inquiries_insert_form";
	}
	
	//추가
	@RequestMapping("insert")
	public String insert(InquiriesVO vo) {
		
		System.out.println(vo.getInquiries_title());
		inquiries_dao.insert(vo);
		
		return "redirect:product";
	}
	
	
	
}
