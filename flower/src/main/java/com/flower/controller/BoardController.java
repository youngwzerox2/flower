package com.flower.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.flower.mycommon.MyConstant;
import com.flower.service.InquiriesService;
import com.flower.service.ReviewsService;
import com.flower.util.Paging;
import com.flower.util.Paging2;
import com.flower.vo.InquiriesVO;
import com.flower.vo.MemberVO;
import com.flower.vo.ReviewsVO;

@Controller
@RequestMapping("/board/")
public class BoardController {
	
	@Autowired
	InquiriesService inquiriesService;
	
	@Autowired
	ReviewsService reviewsService;
	
	@Autowired
	HttpSession session;
	
	//목록출력
	@RequestMapping("product")
	public String product(@RequestParam(value = "page",   required = false, defaultValue = "1")   int nowPage, 
						  @RequestParam(value = "revipage",   required = false, defaultValue = "1")	  int revi_nowPage,			              
						  @RequestParam(value = "search", required = false, defaultValue = "all") String search, 
						  String search_text, Model model) {
		
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
		
		int rowTotal = inquiriesService.selectRowTotal(map);
		//System.out.println(rowTotal);
		
		int revi_rowTotal = reviewsService.selectRowTotal(revi_map);
		
		//Paging만들기
		String pageMenu = Paging.getPaging("product", 
							                nowPage, 
							                rowTotal,
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
	public String insert(InquiriesVO vo, Model model) {
		
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
		
		//2.결과적으로 request binding
		model.addAttribute("vo", vo);
		
		return "board/inquiries_modify_form";
	}
	
	@RequestMapping("modify")
	public String modify(InquiriesVO vo, Model model) {
		
		inquiriesService.update(vo);
		
		model.addAttribute("inquiries_id", vo.getInquiries_id());
		
		return "redirect:view";
	}
	
	//리뷰쓰기 폼띄우기
	@RequestMapping("insert_reviews_form")
	public String insert_reviews_form() {
		
		return "board/reviews_insert_form";
	}
	
	//리뷰쓰기 추가
	@RequestMapping("reviews_insert")
	public String reviews_insert(ReviewsVO vo, Model model) {
		
		MemberVO member = (MemberVO) session.getAttribute("member");
		
		vo.setMember_id(member.getMember_id());
		
		reviewsService.insert(vo);
		
		return "redirect:product";
	}
	
	//리뷰쓰기 뷰
	@RequestMapping("reviews")
	public String reviews(String reviews_id, Model model) {
		
		ReviewsVO vo = reviewsService.selectOne(reviews_id);
		
		model.addAttribute("vo", vo);
		
		return "board/reviews_view";
	}
	
	
}
