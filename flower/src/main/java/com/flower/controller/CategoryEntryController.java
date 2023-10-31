package com.flower.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("category")
public class CategoryEntryController {
	
	@RequestMapping("/{step}")
	public String viewCategoryProduct(@PathVariable String step) {
		System.out.println("from main!");
		return "category/" + step;
	}

} //class ProductController
