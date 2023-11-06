package com.flower.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flower.service.MemberAddressService;

@Controller
@RequestMapping("order")
public class OrdertableController {

	@Autowired
	MemberAddressService Maser;
	
	@RequestMapping("orderInfo")
	public void orderInfo() {
		
	}
	
}
