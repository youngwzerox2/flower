package com.flower.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.flower.service.ProductService;

@Controller
@RequestMapping("Main")
public class MainController {

	@Autowired
	private ProductService Pser;
	
	@RequestMapping("flowerkeyword")
	@ResponseBody
	public List flowerKeyWord() {
		List list = Pser.flowerkeyword();
		System.out.println(list);
		return list;
	}
}
