package com.flower.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("mypage")
public class MypageController {
	
	@RequestMapping("mypage1")
	public void myPage() {
		
	}
	
	@RequestMapping("inquiryList")
	@ResponseBody
	public void inquiryList() {
		
	}

}
