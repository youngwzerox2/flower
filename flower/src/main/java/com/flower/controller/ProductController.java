package com.flower.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	

	// 상품 목록 가져오기
	@RequestMapping("/product/category/product")
	//HttpServletRequest req,
	public void getCateProdList(ProductVO pvo, HttpServletRequest req, Model m) {
		
		// 컨트롤러 접근 확인
		System.out.println("--------------------------");
		System.out.println("from main!: " + pvo);		
		
		ProductVO vo = new ProductVO();
		
		
		// 메뉴를 클릭해서 들어올 때: 조건이 1개(product_type으로 받는다.)
		if(pvo !=null && pvo.getProduct_type() != null) {
			vo.setProduct_type(pvo.getProduct_type());
			String type = vo.getProduct_type();
			switch(type){
			  case "spring":
			    vo.setBlooming_season(type);
			  break;
			  case "summer":
			    vo.setBlooming_season(type);
			  break;
			  case "fall":
			    vo.setBlooming_season(type);
			  break;
			  case "winter":
			    vo.setBlooming_season(type);
			  break;
			  case "petFriendly":
			    vo.setPet_friendly(true);
			  break;
			  case "easyCare":
			    vo.setEasy_care(true);
			  break;
			  case "afterSunset":
			    vo.setBlooming_time(type);
			  break;
			} // switch end
			
			
		}
		
		// 상품 목록에서 검색 조건을 적용했을 때
		// 상품목록 화면에서만 검색 필터가 적용되기 때문에, 조건이 2개 이상이다.
		if (req.getParameterValues("filterCondition") != null) {
			List<String> condition = Arrays.asList(req.getParameterValues("filterCondition"));
			
			for(String type2 : condition) {
				switch(type2){
				  case "spring":
					  vo.setBlooming_season(type2);
				  break;
				  case "summer":
					  vo.setBlooming_season(type2);
				  break;
				  case "fall":
					  vo.setBlooming_season(type2);
				  break;
				  case "winter":
					  vo.setBlooming_season(type2);
				  break;
				  case "pet_friendly":
				      vo.setPet_friendly(true);
				  break;
				  case "easy_care":
				    vo.setEasy_care(true);
				  break;
				  case "dl":
				    vo.setProduct_light(type2);
				  break;
				  case "idl":
					vo.setProduct_light(type2);
				  break;
				  case "sh":
					vo.setProduct_light(type2);
				  break;
				  case "nm":
					vo.setProduct_light(type2);
				  break;
					  
				} // 검색 필터 switch end
			} // for end
		}// request if end
		
		System.out.println("vo가 완성되었나@controller: " + vo);
		
		List<ProductVO> result = productService.getCateProdList(vo);
		m.addAttribute("productList", result);
		m.addAttribute("prodType", vo);
		
//		return  "product/category/product22222";
	}
	

	// 상품 검색 결과 가져오기(목록): 검색어 직접 입력..?
	
	// 상품 필터링 결과 가져오기
	 @RequestMapping("/product/category/filtered")
	 @ResponseBody public Integer getFilteredProdList(HttpServletRequest req) {
		 String[] arr = req.getParameterValues("filterCondition");
		 int cnt = arr.length;
		 for(int i = 0; i < cnt; i++) {
			 System.out.println("필터링 controller 접근: " + arr[i]);
		 }
		 return null;
	 }
	 
	
	
	// 상품 상세 페이지 가져오기
	@RequestMapping("/product/contents/product-content")
	public void getProdContent(HttpSession sess, ProductVO pvo, Model m) {
		MemberVO mvo = (MemberVO)sess.getAttribute("member");
		
		// 로그인한 멤버인지 확인 한 후, 찜상태까지 조회하여 add
		if(mvo != null && mvo.getMember_id() != null) {
			LoveVO lvo = new LoveVO();
			lvo.setMember_id(mvo.getMember_id());
			lvo.setProduct_id(Integer.valueOf(pvo.getProduct_id()));
			Integer love_result = productService.isLove(lvo);
			System.out.println("찜한 상태인지 조회결과: " + love_result);
			
			ProductVO member_result = productService.getProd(pvo);
			m.addAttribute("prod", member_result);
			m.addAttribute("love", love_result);
		} else {
			ProductVO result = productService.getProd(pvo);
			m.addAttribute("prod", result);
		}
//		System.out.println("controller연결은 됨!: " + vo.getProduct_id());
//		productService.getProd(vo);
		
		//return "/product/contents/product-content?product_id=" + vo.getProduct_id();
	}
	
	
	// 상품 등록 → 관리자 화면에서 다룬다.
	// 상품 수정 → 관리자 화면에서 다룬다.
	// 상품 삭제 → 관리자 화면에서 다룬다.
	
	
	// 상품 필터링
	@GetMapping("filterProducts")
	public List<ProductVO> filterProducts(@RequestParam Map<String, String> filterParams) {
		return productService.filterProducts(filterParams);  
	}
	
	// 찜(마음에든꽃 혹은 love 혹은 wishlist) update
	@RequestMapping("/love")
	@ResponseBody
	public Integer updateLove(HttpSession sess, ProductVO pvo, Model m) {
		
		MemberVO mvo = (MemberVO)sess.getAttribute("member");
		Integer result = 0;
		
		if(mvo != null && mvo.getMember_id() != null) {
			LoveVO lvo = new LoveVO();
			lvo.setMember_id(mvo.getMember_id());
			lvo.setProduct_id(Integer.valueOf(pvo.getProduct_id()));
			System.out.println("love controller 접근 성공! love vo: " + lvo);
			result = productService.updateLove(lvo);
			System.out.println("결과값 확인: " + result);
			return result;
		} else if (mvo == null && mvo.getMember_id() == null) {
			System.out.println("love controller 접근은 성공");
			return 0;
		}
		
		return (result == 1) ? result: 0;
	}
	
	
	

	// 목록의 페이지 제어(버튼) 처리
	
	
} //class ProductController
