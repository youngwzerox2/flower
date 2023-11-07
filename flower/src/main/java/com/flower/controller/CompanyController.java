package com.flower.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flower.service.CompanyService;
import com.flower.vo.CompanyVO;

@Controller
@RequestMapping("company")
public class CompanyController {

	@Autowired
	private CompanyService companyService;
	
	@RequestMapping("companyPolicy")
	public String getCompanyPolicy(Model model) throws Exception {
		System.out.println("getCompanyPolicy 진입");
		CompanyVO companyPolicy = companyService.getCompanyPolicy();
		model.addAttribute("companyPolicy", companyPolicy);
	
	return "member/register";
	}
}
