package com.flower.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flower.dao.MemberDAO;
import com.flower.vo.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public void register(MemberVO vo) throws Exception{
		 memberDAO.register(vo);
	}

	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		
		return memberDAO.login(vo);
	}

	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = memberDAO.idChk(vo);
		return result;
	}

	@Override
	public String findEmailChk(String member_email) throws Exception {
		String result = memberDAO.findEmailChk(member_email);
		return result;
		 
	}

	@Override
	// 마이페이지 비밀번호 업데이트, 비밀번호 초기화(찾기)
	public void updatePassword(MemberVO vo) {
		memberDAO.updatePassword(vo);
	}

	@Override
	// 마이페이지 회원 탈퇴
	public void memberWithdrawal(MemberVO vo) {
		memberDAO.memberWithdrawal(vo);
	}

	@Override
	public void changePassword(MemberVO vo) throws Exception {
		memberDAO.changePassword(vo);
	}




}
