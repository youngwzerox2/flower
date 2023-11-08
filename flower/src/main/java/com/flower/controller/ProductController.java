package com.flower.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flower.service.ProductService;
import com.flower.vo.LoveVO;
import com.flower.vo.MemberVO;
import com.flower.vo.ProductVO;

@Controller
public class ProductController {
	
	private ProductService productService;
	
	public ProductController() {} // constructor
	
	@Autowired
	public ProductController(ProductService productService) {
		this.productService = productService;
	} // constructor(ProductService productService)
	
	
	@RequestMapping("/flower_main")
	public String toMain() {
		return "redirect:http://localhost:8080/flower/flower_main.jsp";
	}
	
	// 고민요망: 해당 카테고리에 들어갈 때마다 검색 필터에 카테고리가 적용된 상태로 진입하게 할 것인가
	// 클릭한 카테고리 상품 목록 가져오기
	@RequestMapping("/product/category/{cate}")
	public String getCateProdList(@PathVariable String cate, Model m) {
//		System.out.println("from main!" + System.currentTimeMillis());
//		System.out.println("cate");
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
		return "/product/category/"+cate;
	}
	
	
	// 전체 상품 목록 가져오기
	public void getAllProdList() {
		
	}

	
	// 상품 검색 결과 가져오기(목록)
	
	
	// 상품 상세 페이지 가져오기
	@RequestMapping("/product/contents/product-content")
	public void getProdContent(ProductVO vo, Model m) {
//		System.out.println("controller연결은 됨!: " + vo.getProduct_id());
//		productService.getProd(vo);
		ProductVO result = productService.getProd(vo);
		m.addAttribute("prod", result);
		//return "/product/contents/product-content?product_id=" + vo.getProduct_id();
	}
	
	
	// 상품 등록 → 관리자 화면에서 다룬다.
	// 상품 수정 → 관리자 화면에서 다룬다.
	// 상품 삭제 → 관리자 화면에서 다룬다.
	
	
	
	// 찜(마음에든꽃 혹은 love 혹은 wishlist) update
	@RequestMapping("/love")
	public Integer updateLove(HttpSession sess, ProductVO pvo, Model m) {
		
		MemberVO mvo = (MemberVO)sess.getAttribute("member");
		LoveVO lvo = new LoveVO();
		lvo.setMember_id(mvo.getMember_id());
		lvo.setProduct_id(Integer.valueOf(pvo.getProduct_id()));
		System.out.println("love controller 접근 성공! love vo: " + lvo);
		System.out.println("결과값 확인: " + productService.updateLove(lvo));
		return productService.updateLove(lvo);
		
		
	}
	
	
	

} //class ProductController
