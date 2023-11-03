package com.flower.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.flower.mycommon.MyConstant;
import com.flower.service.InquiriesService;
import com.flower.util.Paging;
import com.flower.vo.InquiriesVO;

@Controller
@RequestMapping("/board/")
public class BoardController {
	
	@Autowired
	InquiriesService inquiriesService;
	
	//목록출력
	@RequestMapping("product")
	public String product(@RequestParam(value="page",  required=false, defaultValue="1") int nowPage, Model model) {
		
		int start = (nowPage-1) * MyConstant.inquiries.BLOCK_LIST + 1;
		int end   = start + MyConstant.inquiries.BLOCK_LIST - 1;
		
		Map map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		
		List<InquiriesVO> list = inquiriesService.selectList(map);
		
		int rowTotal = inquiriesService.selectRowTotal(map);
		System.out.println(rowTotal);
		
		String pageMenu = Paging.getPaging("product", 
							                nowPage, 
							                rowTotal,
							                MyConstant.inquiries.BLOCK_LIST, 
							                MyConstant.inquiries.BLOCK_PAGE);

		model.addAttribute("list", list);
		model.addAttribute("pageMenu", pageMenu);
		
		return "board/single-product";
	}
	
	//폼띄우기
	@RequestMapping("insert_form")
	public String insert_form() {
		
		return "board/inquiries_insert_form";
	}
	
	//추가
	@RequestMapping("insert")
	public String insert(InquiriesVO vo) {
		
		System.out.println(vo.getInquiries_title());
		inquiriesService.insert(vo);
		
		return "redirect:product";
	}
	
}
