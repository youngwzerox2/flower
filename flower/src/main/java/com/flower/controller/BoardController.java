package com.flower.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.net.ApplicationBufferHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.flower.mycommon.MyConstant;
import com.flower.service.InquiriesService;
import com.flower.service.ReviewsService;
import com.flower.util.Paging;
import com.flower.util.Paging2;
import com.flower.vo.InquiriesVO;
import com.flower.vo.MemberProductImageVO;
import com.flower.vo.MemberVO;
import com.flower.vo.OrderTableVO;
import com.flower.vo.ReviewsVO;
import com.sun.security.jgss.InquireType;

@Controller
@RequestMapping("/board/")
public class BoardController {
	
	@Autowired
	InquiriesService inquiriesService;
	
	@Autowired
	ReviewsService reviewsService;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	ServletContext application; 
	
	//목록출력
	@RequestMapping("product")
	public String product(@RequestParam(value = "page",      required = false, defaultValue = "1")     int nowPage, 
						  @RequestParam(value = "revipage",  required = false, defaultValue = "1")	int revi_nowPage,			              
						  @RequestParam(value = "search",    required = false, defaultValue = "all") String search,
						  @RequestParam(value="search_text", required=false,defaultValue="")       String search_text, 
						  Model model, OrderTableVO vo) {
		
		int start = (nowPage-1) * MyConstant.inquiries.BLOCK_LIST + 1;
		int end   = start + MyConstant.inquiries.BLOCK_LIST - 1;
		
		int revi_start = (revi_nowPage-1) * MyConstant.reviews.BLOCK_LIST + 1;
		int revi_end   = revi_start + MyConstant.reviews.BLOCK_LIST - 1;
		
		Map map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		
		
		Map revi_map = new HashMap();
		revi_map.put("revi_start", revi_start);
		revi_map.put("revi_end", revi_end);
		
		
		if(search.equals("title")) {
			map.put("title", search_text);
		}else if(search.equals("regdate")) {
			map.put("regdate", search_text);
		}

		List<InquiriesVO> list = inquiriesService.selectList(map);
		
		List<ReviewsVO> reviews_list = reviewsService.selectList(revi_map);
		
		List<OrderTableVO> order_list = reviewsService.selectList();
		
		System.out.println(order_list);
		
		int rowTotal = inquiriesService.selectRowTotal(map);
		//System.out.println(rowTotal);
		
		int revi_rowTotal = reviewsService.selectRowTotal(revi_map);
		
		//Paging만들기
		
		String search_filter = String.format("&search=%s&search_text=%s", search,search_text);
		
		String pageMenu = Paging.getPaging("product", 
							                nowPage, 
							                rowTotal,
							                search_filter,
							                MyConstant.inquiries.BLOCK_LIST, 
							                MyConstant.inquiries.BLOCK_PAGE);
		
		
		String revi_pageMenu = Paging2.getPaging("product", 
											revi_nowPage, 
											revi_rowTotal,
							                MyConstant.reviews.BLOCK_LIST, 
							                MyConstant.reviews.BLOCK_PAGE);
		
		
		model.addAttribute("list", list);
		model.addAttribute("pageMenu", pageMenu);
		
		model.addAttribute("reviews_list", reviews_list);
		model.addAttribute("revi_pageMenu", revi_pageMenu);
		
		return "board/single-product";
	}
	
	//문의하기 폼띄우기
	@RequestMapping("insert_form")
	public String insert_form() {
		
		return "board/inquiries_insert_form";
	}
	
	//문의하기 뷰
	@RequestMapping("view")
	public String view(String inquiries_id, Model model) {
		
		InquiriesVO vo = inquiriesService.selectOne(inquiries_id);
		
		model.addAttribute("vo", vo);
		
		return "board/inquiries_view";
	}
	
	//문의하기추가
	@RequestMapping("insert")
	public String insert(InquiriesVO vo) {
		
		MemberVO member = (MemberVO) session.getAttribute("member");
		
		vo.setMember_id(member.getMember_id());
		
		inquiriesService.insert(vo);
		
		return "redirect:product";
	}
	
	//문의하기 수정폼
	@RequestMapping("modify_form")
	public String modify_form(String inquiries_id,Model model) {
		
		//1.수정 데이터 정보 1건 얻어오기
		InquiriesVO vo = inquiriesService.selectOne(inquiries_id);
		
		System.out.println(vo);
		
		//2.결과적으로 request binding
		model.addAttribute("vo", vo);
		
		return "board/inquiries_modify_form";
	}
	
	//수정하기
	@RequestMapping("modify")
	public String modify(InquiriesVO vo, Model model) {
		
		inquiriesService.update(vo);
		
		System.out.println(vo);
		
		model.addAttribute("inquiries_id", vo.getInquiries_id());
		
		return "redirect:view";
	}
	
	//삭제
	@RequestMapping("inquiries_delete")
	public String inquiries_delete(String inquiries_id, Model model) {
		
		inquiriesService.delete(inquiries_id);
		
		return "redirect:product";
	}
	
	//리뷰쓰기 폼띄우기
	@RequestMapping("insert_reviews_form")
	public String insert_reviews_form() {
		
		return "board/reviews_insert_form";
	}
	
	//리뷰쓰기 추가
	@RequestMapping("reviews_insert")
	public String reviews_insert(ReviewsVO vo, Model model, MemberProductImageVO file_vo, @RequestParam(value = "photo", required = false) MultipartFile photo)throws Exception {
		
		MemberVO member = (MemberVO) session.getAttribute("member");
		
		vo.setMember_id(member.getMember_id());
		
		String web_path = "/resources/upload/";
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
		
		return "redirect:product";
	}
	
	//리뷰쓰기 뷰
	@RequestMapping("reviews")
	public String reviews(String reviews_id, Model model) {
		
		ReviewsVO vo = reviewsService.selectOne(reviews_id);
		
		System.out.println("reviews:"+vo);
		model.addAttribute("vo", vo);
		
		return "board/reviews_view";
	}
	
	//리뷰폼
	@RequestMapping("reviews_modify_form")
	public String reviews_modify_form(String reviews_id,Model model) {
		
		//1.수정 데이터 정보 1건 얻어오기
		ReviewsVO vo = reviewsService.selectOne(reviews_id);
		System.out.println(vo);
		
		//2.결과적으로 request binding
		model.addAttribute("vo", vo);
		
		return "board/reviews_modify_form";
	}
	
	//수정하기
	@RequestMapping("reviews_modify")
	public String reviews_modify(ReviewsVO vo, Model model) {
		
		reviewsService.update(vo);
		
		System.out.println("reviews_modify"+vo);
		
		model.addAttribute("reviews_id", vo.getReviews_id());
		
		return "redirect:reviews";
	}
	
	//삭제
	@RequestMapping("reviews_delete")
	public String reviews_delete(String reviews_id, Model model) {
		
		reviewsService.delete(reviews_id);
		
		return "redirect:product";
	}
	
}
