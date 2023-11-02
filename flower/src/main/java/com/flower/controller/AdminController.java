package com.flower.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	 * 작성일	: 2023-11-02
	 * 메서드	: searchMembers
	 * 인자	: searchKey, searchValue
	 * 반환	: List<MemberVO>
	 * 설명	: 검색조건에 맞는 모든 회원 조회
	 * */
	@GetMapping("admin/searchMembers")
	public List<MemberVO> searchMembers(String searchKey, String searchValue) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchKey", searchKey);
		map.put("searchValue", searchValue);
		return memberService.searchMembers(map);
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-02
	 * 메서드	: searchMemberDetail
	 * 인자	: email
	 * 반환	: MemberVO
	 * 설명	: 특정 회원 상세 조회
	 * */
	@GetMapping("admin/searchMemberDetail")
	public MemberVO searchMemberDetail(String email) {
		return memberService.searchMemberDetail(email);
	}
}