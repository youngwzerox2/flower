package com.flower.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.flower.service.ProductService;
import com.flower.vo.LoveVO;
import com.flower.vo.MemberVO;
import com.flower.vo.PagingVO;
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
	// 상품 목록 가져오기
	@RequestMapping("/product/category/product")
	public void getCateProdList(ProductVO pvo, Model m) {
		System.out.println("from main!" + System.currentTimeMillis());
//		System.out.println("cate");
		ProductVO vo = new ProductVO();
		if(pvo !=null && pvo.getProduct_type() != null) {
			String type = pvo.getProduct_type();
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
			}
		}


		List<ProductVO> result = productService.getCateProdList(vo);
		m.addAttribute("productList", result);
		
		paging(vo);

		
	}
	
	// 페이징 처리를 위한 함수..
	public PagingVO paging(ProductVO pvo) {
		PagingVO pgvo = new PagingVO();
		pgvo.setTotalContents(productService.getProdCateQuan(pvo));
		pgvo.setContentsPerPage(16.0);
		pgvo.setTotalPages((int)Math.ceil(pgvo.getTotalContents()/pgvo.getContentsPerPage()));
		pgvo.setBtnPerPage(3);
		System.out.println("페이징 함수 호출: " + pgvo);
		return null;
	}
	
	
	// 상품 검색 결과 가져오기(목록)
	
	
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
		} else if (sess == null) {
			System.out.println("love controller 접근은 성공");
			return 0;
		}
		
		return (result == 1) ? result: 0;
	}
	
	
	

	// 목록의 페이지 제어(버튼) 처리
	
	
} //class ProductController
