package com.flower.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flower.service.ProductService;
import com.flower.vo.ProductVO;

@Controller
// @RequestMapping("category")
public class ProductController {
	
	private ProductService productService;
	
	public ProductController() {} // constructor
	
	@Autowired
	public ProductController(ProductService productService) {
		this.productService = productService;
	} // constructor(ProductService productService)
	
	
	// 고민요망: 해당 카테고리에 들어갈 때마다 검색 필터에 카테고리가 적용된 상태로 진입하게 할 것인가
	// 클릭한 카테고리 상품 목록 가져오기
	@RequestMapping("{cate}")
	public String getCateProdList(@PathVariable String cate, Model m) {
		System.out.println("from main!" + System.currentTimeMillis());
		System.out.println("cate");
		ProductVO vo = new ProductVO();
		switch(cate){
		  case "spring":
		    vo.setBlooming_season(cate);
		  break;
		  case "summer":
		    vo.setBlooming_season(cate);
		  break;
		  case "fall":
		    vo.setBlooming_season(cate);
		  break;
		  case "winter":
		    vo.setBlooming_season(cate);
		  break;
		  case "petFriendly":
		    vo.setPet_friendly(true);
		  break;
		  case "easyCare":
		    vo.setEasy_care(true);
		  break;
		  case "afterSunset":
		    vo.setBlooming_time(cate);
		  break;
		}
//		System.out.println("controller's vo: " + vo);
		List<ProductVO> result = productService.getCateProdList(vo);
		m.addAttribute("productList", result);
		return "category/"+cate;
	}
	
//	@RequestMapping("/imageList.do")
//	public void imageList(Model model) {
//		List<BoardVO> result = boardService.getImgList();
//		model.addAttribute("boardList", result);
//	}
	
	// 전체 상품 목록 가져오기
	public void getAllProdList() {
		
	}

	
	// 상품 검색 결과 가져오기(목록)
	// 상품 상세 페이지 가져오기
	// 상품 등록
	// 상품 수정
	// 상품 삭제
	
	

} //class ProductController
