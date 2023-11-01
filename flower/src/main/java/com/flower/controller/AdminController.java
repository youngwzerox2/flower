package com.flower.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.flower.service.MemberService;
import com.flower.vo.MemberVO;

@RestController
public class AdminController {

	@Autowired
	private MemberService memberService;
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-01
	 * 메서드	: adminMain
	 * 인자	: void
	 * 반환	: String
	 * 설명	: 관리자 페이지 이동
	 * */
	@RequestMapping("admin/login")
	public ModelAndView adminMain() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/adminHome");
        return modelAndView;
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-01
	 * 메서드	: selectAllMembers
	 * 인자	: void
	 * 반환	: String
	 * 설명	: 관리자 페이지 이동
	 * */
	@GetMapping("admin/selectAllMembers")
	public List<MemberVO> selectAllMembers() {
		System.out.println("selectAllMembers 진입");
		List<MemberVO> result = memberService.selectAllMembers();
		System.out.println(result.toString());
		return result;
	}
	
	
}