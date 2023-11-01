package com.flower.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.flower.service.MemberService;
import com.flower.vo.MemberVO;

@Controller
@RequestMapping("member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	// 로그인 페이지 부르기
	@RequestMapping("login")
	public String login() {
		System.out.println("login 진입");
		 return "member/login";
	}
	
	// 회원가입 페이지 부르기
	@RequestMapping("register")
	public String register(MemberVO vo) {
		System.out.println("register 진입");
		return "member/register";
	}
	
	// 회원가입 post 하기
	@PostMapping("register")
	public String postRegister(MemberVO vo) throws Exception {
		System.out.println("회원가입입력 : " +vo);
		logger.info("post register");
		int result = memberService.idChk(vo);
		try {
			if(result == 1) {
				return "member/register";
			}else if(result == 0) {
				memberService.register(vo);
			}
			
		}catch (Exception e) {
			throw new RuntimeException();
		}
		
		return "redirect:/member/login";
	}
	
	// 로그인 post
	@PostMapping("login")
	public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		logger.info("post login");
		
		HttpSession session = req.getSession();
		MemberVO login = memberService.login(vo);
		
		if(login == null ) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		}else {
			session.setAttribute("member", login);
		}
		
		return "redirect:/flower_main.jsp";
	}
	
	// 로그아웃 get
	@GetMapping("logout")
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/member/login";
	}
	
	// 이메일 중복체크
	@ResponseBody
	@PostMapping("idChk")
	public int idChk(MemberVO vo) throws Exception {
		int result = memberService.idChk(vo);
		return result;
	}
	
	
	
	
}
