package com.flower.controller;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.flower.mycommon.MyConstant;
import com.flower.service.InquiriesService;
import com.flower.service.ProductService;
import com.flower.service.ReviewsService;
import com.flower.util.Paging;
import com.flower.util.Paging2;
import com.flower.vo.InquiriesVO;
import com.flower.vo.LoveVO;
import com.flower.vo.MemberProductImageVO;
import com.flower.vo.MemberVO;
import com.flower.vo.ProductVO;
import com.flower.vo.ReviewsVO;

@Controller
public class ProductController {
	
	@Autowired
	InquiriesService inquiriesService;
	
	@Autowired
	ReviewsService reviewsService;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	ServletContext application; 
	
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
	@RequestMapping("/product/product")
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
//		System.out.println("vo가 완성되었나@controller: " + vo);
		
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
	 @RequestMapping("/product/filtered") 
	 public String getFilteredProdList(ProductVO pvo, Model m) {
		 System.out.println("---------------------------");
		 System.out.println("Accessing filtering controller success!");
		 System.out.println("pvo has values?: " + pvo);
		 
		 /************
		  * ProductVO(product_id=null, cate_id=null, product_name=null, product_content=null, 
		  * product_keyword=null, blooming_season=null, blooming_time=null, 
		  * pet_friendly=true, easy_care=true, product_light=dl, product_type=spring, product_display_order=4, 
		  * inventory_quantity=null, product_price=null, product_register_date=null, 
		  * product_image_file_name=null, product_image_type=null, product_image_froute=null, 
		  * prod_imgs_lists=null, prod_img_list=null, prod_imgs_froutes=null, 
		  * prod_img_main=null, prod_imgs_sub=null, prod_imgs_guide=null, 
		  * prod_cate_quan=null, pageNumber=null) */
		 
		 /**** 필터링 종류 *****
		  * 초보자용(체크박스)		: easy_care - true
		  * 반려동물안심꽃(체크박스)	: pet_friendly - true
		  * 일조량(라디오)			: dl(양지/직광), idl(반음지/간접광), sh(음지/그늘), nm(영향적음)
		  * 정렬기준				: 1)기본정렬, 2)판매량순, 3)리뷰많은순, 4)찜많은순, 5)가격높은순, 6)가격낮은순
		  * 
		  * 분기 요망1: product_type >> season, pet_friendly, easy_care, blooming_time(M: morning, N:night)
		  * 분기 요망2@SQL: 정렬2-order_table조인, 정렬3)리뷰많은순-reviews조인, 정렬4) 찜많은순-love조인, 정렬5, 6)product order by
		  * ****/
		 
		 List<ProductVO> result = productService.getFilteredProdList(pvo);
		 m.addAttribute("productList", result);
		 return "/product/product";
	 }
	 
	
	
	// 상품 상세 페이지 가져오기
	@RequestMapping("/product/product-content")
	public void getProdContent(HttpSession sess, ProductVO pvo, Model m, @RequestParam(value = "page",   required = false, defaultValue = "1") int nowPage,
            @RequestParam(value = "r_page", required = false, defaultValue = "1") int nowPage2) {
		MemberVO mvo = (MemberVO)sess.getAttribute("member");
		
		// 로그인한 멤버인지 확인 한 후, 찜상태까지 조회하여 add
		if(mvo != null && mvo.getMember_id() != null) {
			LoveVO lvo = new LoveVO();
			lvo.setMember_id(mvo.getMember_id());
			lvo.setProduct_id(Integer.valueOf(pvo.getProduct_id()));
			Integer love_result = productService.isLove(lvo);
			// System.out.println("찜한 상태인지 조회결과: " + love_result);
			
			ProductVO member_result = productService.getProd(pvo);
			m.addAttribute("prod", member_result);
			m.addAttribute("love", love_result);
		} else {
			ProductVO result = productService.getProd(pvo);
			m.addAttribute("prod", result);
		}
//		System.out.println("controller연결은 됨!: " + vo.getProduct_id());
//		productService.getProd(vo);
		
		//return "/product/product-content?product_id=" + vo.getProduct_id();
		
		
		/***** 박민진: 문의, 리뷰 ********/
		//페이지 가져올 범위 계산
		int start = (nowPage-1) * MyConstant.inquiries.BLOCK_LIST + 1;
		int end   = start + MyConstant.inquiries.BLOCK_LIST - 1;
				
		int r_start = (nowPage2-1) * MyConstant.reviews.BLOCK_LIST + 1;
		int r_end   = r_start + MyConstant.reviews.BLOCK_LIST - 1;
				
		Map map = new HashMap();
		map.put("start", start);
		map.put("end", end);
				
		Map map2 = new HashMap();
		map2.put("r_start", r_start);
		map2.put("r_end"  , r_end);
				
		//문의목록출력
		List<InquiriesVO> list = inquiriesService.selectList(map);
		// System.out.println("문의리스트" +  list.size());
				
		//리뷰목록출력
		List<ReviewsVO> r_list = reviewsService.selectList(map2);
		// System.out.println("리뷰리스트" +  r_list.size());
				
		//문의 게시물 갯수 구하기
		int rowTotal = inquiriesService.selectRowTotal(map);
		// System.out.println("문의:" +  rowTotal);
				
		//리뷰 게시물 갯수 구하기
		int r_rowTotal = reviewsService.selectRowTotal(map2);
		// System.out.println("리뷰:" +  r_rowTotal);
				
		//PagingMenu만들기
		String pageMenu = Paging.getPaging("/flower/product/product-content?product_id=" + pvo.getProduct_id() + "&", 
							                nowPage, 
							                rowTotal,
							                MyConstant.inquiries.BLOCK_LIST, 
							                MyConstant.inquiries.BLOCK_PAGE);
				
		String r_pageMenu = Paging2.getPaging("/flower/product/product-content?product_id=" + pvo.getProduct_id() + "&", 
												nowPage2, 
												r_rowTotal,
								                MyConstant.reviews.BLOCK_LIST, 
								                MyConstant.reviews.BLOCK_PAGE);
		
		//문의게시판 request binding
		m.addAttribute("list", list);
		m.addAttribute("pageMenu", pageMenu);
		
		m.addAttribute("r_list", r_list);
		m.addAttribute("r_pageMenu", r_pageMenu);
	}
	
	//문의하기 폼띄우기
	@RequestMapping("product/insert_form")
	public String insert_form() {
			return "product/inquiries_insert_form";
	}
		
	//문의하기 추가
	@RequestMapping("product/inquiries_insert_form")
	public String inquiries_insert_form(InquiriesVO vo, ProductVO pvo, Model m) {
		
		// System.out.println("추가추가" + vo);
		inquiriesService.insert(vo);
		return "redirect:product-content?product_id=" + 2;
	}
		
	//문의하기 뷰
	@RequestMapping("product/view")
	public String view(String inquiries_id, Model model) {
			InquiriesVO vo = inquiriesService.selectOne(inquiries_id);
			model.addAttribute("vo", vo);
			return "product/inquiries_view";
	}
	
	//문의하기 수정폼
    @RequestMapping("product/inquiries_modify_form")
	public String modify_form(String inquiries_id, ProductVO pvo, Model model) {
		
		//1.수정 데이터 정보 1건 얻어오기
		InquiriesVO vo = inquiriesService.selectOne(inquiries_id);
			
		// System.out.println(vo);
			
		//2.결과적으로 request binding
		model.addAttribute("vo", vo);
			
		return "product/inquiries_modify_form";
	}

	//문의하기 수정
	@RequestMapping("product/inquiries_modify")
	public String modify(InquiriesVO vo, ProductVO pvo, Model model) {
		
		inquiriesService.update(vo);
		
		System.out.println(vo);
		
		model.addAttribute("inquiries_id", vo.getInquiries_id());
		
		return "redirect:view";
	}
	
		
	//문의하기 삭제
	@RequestMapping("product/inquiries_delete")
	public String inquiries_delete(String inquiries_id, ProductVO pvo) {

	        inquiriesService.delete(inquiries_id);

	
		return "redirect:product-content?product_id=" + 1;
	}
	
	
	
	
	//리뷰쓰기 폼
	@RequestMapping("product/insert_reviews_form")
	public String insert_reviews_form() {
			return "product/reviews_insert_form";
	}
		
	//리뷰쓰기 추가
	@RequestMapping("product/reviews_insert")
	public String reviews_insert(ReviewsVO vo, ProductVO pvo, MemberProductImageVO file_vo, Model m, @RequestParam(value="photo",required=false) MultipartFile photo) throws Exception {
		
			String web_path = "/resources/product/imgs";
			String abs_path = application.getRealPath(web_path);
			
			System.out.println(abs_path); 
			
			String filename = "no_file";
			
			if(photo!=null) {
				filename = photo.getOriginalFilename();
				
				File f = new File(abs_path,filename);
				
				while(f.exists()) {
					long time = System.currentTimeMillis();
					
					filename = String.format("%d_%s", time, filename);
					
					f = new File(abs_path, filename);
					
				}
				
				photo.transferTo(f);
				
			}
			
			file_vo.setMember_product_image_file_name(filename);
			
			System.out.println(vo);
			System.out.println(file_vo);
			
			reviewsService.insert(vo, file_vo);
			        
			return "redirect:product-content?product_id=" + pvo.getProduct_id();
	}
		
	//리뷰쓰기 뷰
	@RequestMapping("product/reviews_view")
	public String reviews(String reviews_id, Model model) {
			ReviewsVO vo = reviewsService.selectOne(reviews_id);
			// System.out.println("reviews:"+vo);
			model.addAttribute("vo", vo);
			
			return "product/reviews_view";
	}
		
	//리뷰쓰기 수정폼
	@RequestMapping("product/reviews_modify_form")
	public String reviews_modify_form(String reviews_id,Model model) {
			
			//1.수정 데이터 정보 1건 얻어오기
			ReviewsVO vo = reviewsService.selectOne(reviews_id);
			// System.out.println(vo);
			
			//2.결과적으로 request binding
			model.addAttribute("vo", vo);
			
			return "product/reviews_modify_form";
	}
		
	//리뷰쓰기 수정
	@RequestMapping("product/reviews_modify")
	public String reviews_modify(ReviewsVO vo, Model model) {
			
			reviewsService.update(vo);
			
			//System.out.println("reviews_modify"+vo);
			
			model.addAttribute("reviews_id", vo.getReviews_id());
			
			return "redirect:reviews_view";
	}
		
	//리뷰쓰기 삭제
	@RequestMapping("product/reviews_delete")
	public String reviews_delete(String reviews_id, ProductVO pvo) {
			
		reviewsService.delete(reviews_id);

		return "redirect:product-content?product_id=" + 3;
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
		} else if (mvo == null && mvo.getMember_id() == null) {
			System.out.println("love controller 접근은 성공");
			return 0;
		}
		
		return (result == 1) ? result: 0;
	}
	
	
	

	// 목록의 페이지 제어(버튼) 처리
	
	
} //class ProductController
