package com.flower.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/member")
public class MemberController {

	@RequestMapping("login")
	public void viewPage() {
		System.out.println("viewPage 진입 완료");
		// return "/member/login";
	}
	
}
