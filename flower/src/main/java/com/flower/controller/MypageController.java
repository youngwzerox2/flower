package com.flower.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.flower.service.InquiriesService;
import com.flower.service.LoveService;
import com.flower.service.MemberAddressService;
import com.flower.service.MemberService;
import com.flower.service.OrderTableService;
import com.flower.vo.InquiriesVO;
import com.flower.vo.MemberAddressVO;
import com.flower.vo.MemberVO;
import com.flower.vo.OrderTableVO;
import com.flower.vo.ProductVO;

@Controller
@RequestMapping("mypage")
public class MypageController {
	
	@Autowired
	LoveService Lser;
	@Autowired
	OrderTableService Oser;
	@Autowired
	InquiriesService Iser;
	@Autowired
	MemberAddressService Maser;
	@Autowired
	MemberService Mser;
	
	@RequestMapping("mypage1")
	public void myPage(HttpSession session, Model m) {
		MemberVO vo = (MemberVO)session.getAttribute("member");
		System.out.println(vo);
		List<ProductVO> pm = Lser.selectLove(vo);
		List<OrderTableVO> om = Oser.selectOrderList(vo);
		List<InquiriesVO> im = Iser.selectMyList(vo);
		List<MemberAddressVO> Mam = Maser.selectMemberAddress(vo);
		
		m.addAttribute("product",pm);
		m.addAttribute("order",om);
		m.addAttribute("inquiries", im);
		m.addAttribute("memberaddress", Mam);
	}
	
	@RequestMapping("pwUdate")
	public String pwUdate(HttpSession session, String newpassword, RedirectAttributes rttr) {
		MemberVO vo = (MemberVO)session.getAttribute("member");
		vo.setMember_password(newpassword);
		Mser.updatePassword(vo);
		session.invalidate();
		rttr.addFlashAttribute("msg", "정보 수정이 완료되었습니다. 다시 로그인해주세요.");
		
		return "redirect:/member/login";
	}
	
	@RequestMapping("memberWithdrawal")	
	public String memberWithdrawal(HttpSession session) {
		MemberVO vo = (MemberVO)session.getAttribute("member");
		Mser.memberWithdrawal(vo);
		session.invalidate();
		return "redirect:/flower_main.jsp";
	}
	
	@RequestMapping("in_Address")
	public String addAddress(MemberAddressVO avo) {
		if(avo.getDefault_delivery_address()==null) {
			avo.setDefault_delivery_address(0);
		} else {
			Maser.replaceDefaultAddress(avo);
		}
		
		Maser.addAddress(avo);
		return "redirect:/mypage/mypage1";
	}
	
	@RequestMapping("deleteAddress")
	@ResponseBody
	public String deleteAddress(Integer address_id) {
		
		System.out.println(address_id);
		Maser.deleteAddress(address_id);
		return "aa";
	}
	
	@RequestMapping(value = "updateAddress", produces = "text/plain;charset=UTF-8")
	public String updateAddress(MemberAddressVO avo) {
		if(avo.getDefault_delivery_address()==null) {
			avo.setDefault_delivery_address(0);
		} else {
			Maser.replaceDefaultAddress(avo);
		}
		Maser.updateAddress(avo);
		return "redirect:/mypage/mypage1";
		}
	
	
}
