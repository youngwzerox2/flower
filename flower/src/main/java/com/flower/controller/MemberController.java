package com.flower.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.flower.service.CompanyService;
import com.flower.service.MemberService;
import com.flower.vo.CompanyVO;
import com.flower.vo.MemberVO;

@Controller
@RequestMapping("member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private CompanyService companyService;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	// 로그인 페이지 부르기
	@RequestMapping("login")
	public String login() {
		 return "member/login";
	}
	
	// 회원가입 페이지 부르기
	@RequestMapping("register")
	public String register(MemberVO vo, Model model) throws Exception {
		CompanyVO companyPolicy = companyService.getCompanyPolicy();
		model.addAttribute("companyPolicy", companyPolicy);
		return "member/register";
	}
	
	// 회원가입 post 하기
	@PostMapping("register")
	public String postRegister(MemberVO vo) throws Exception {
	    logger.info("회원가입 입력: {}", vo);

	    vo.encodePassword(passwordEncoder);

	    try {
	        int result = memberService.idChk(vo);
	        if (result == 1) {
	            logger.warn("중복된 아이디입니다: {}", vo.getMember_id());
	            return "member/register";
	        } else if (result == 0) {
	            memberService.register(vo);
	            logger.info("회원가입이 완료되었습니다: {}", vo.getMember_id());
	        }
	    } catch (Exception e) {
	        logger.error("회원가입 중 오류 발생", e);
	        throw new RuntimeException("회원가입 중 오류 발생", e);
	    }

	    return "redirect:/member/login";
	}
	
	// 로그인 post
	@PostMapping("login")
	@ResponseBody
	public Integer login(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
		logger.info("post login");
		
		MemberVO login = memberService.login(vo);
		
		if(login == null ) {
			// 사용자가 로그인 실패한 경우
			return 1;
		} else {
			String memberStatus = login.getMember_status();
			
			if("L".equals(memberStatus) || "O".equals(memberStatus)) {
				// "L" 또는 "O" 상태의 사용자가 로그인을 시도한 경우
				return 2;
			} else {
			// 로그인이 성공한 경우
			session.setAttribute("member", login);
			return 0;
		}
	  }
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
	
	// 이메일 찾기(비밀번호에서 이메일찾기)
	@ResponseBody
	@RequestMapping("findEmailChk")
	public String findEmailChk(String member_email, HttpSession session) throws Exception{
		String result = memberService.findEmailChk(member_email);
		if ( result == null) {
			return "0";
		}else {
			// 
			session.setAttribute("memberEmail", member_email);
			return "1";
		}
			
	}
	
	// 이메일 찾기 페이지
	@RequestMapping("findemail")
	public String findEmail() {
		return "member/findemail";
	}
	
	// 비밀번호 찾기 페이지
	@RequestMapping("findpassword")
	public String findPassword() throws Exception{
		return "member/findpassword";
	}
	
	// 비밀번호 초기화 페이지
	@RequestMapping("resetpassword")
	public String resetpassword() throws Exception{
		return "member/resetpassword";
	}
	
	// 비밀번호 초기화(찾기) 페이지
	@PostMapping("changepassword")
	public String changepassword(HttpSession session, String member_password) throws Exception{
		
		// 이메일 주소를 세션에서 가져옴
		String memberEmail = (String) session.getAttribute("memberEmail");
		
		if (memberEmail != null && member_password != null) {
		MemberVO vo = new MemberVO();
		vo.setMember_email(memberEmail);
		vo.setMember_password(member_password);
		
		// memberService를 사용하여 비밀번호 변경을 수행
		memberService.changePassword(vo);
		// 비밀번호 변경 후 세션을 무효화시켜 로그인 페이지로 이동
		session.invalidate();
		return "member/login";
	     
		}
		
	
		// 이메일이 없거나 새 비밀번호가 없는 경우, 비밀번호 초기화 페이지로 이동
		return "member/resetpassword";
	}
	
	
	
	
	
}