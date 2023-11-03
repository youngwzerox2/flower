package com.flower.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.flower.dao.MemberDAO;
import com.flower.vo.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public List<MemberVO> selectAllMembers() {
		
		return memberDAO.selectAllMembers();
	}
	
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

	public String findEmail(String member_email) throws Exception {
		String result = memberDAO.findEmail(member_email);
		return result;
	}

	public List<MemberVO> searchMembers(Map<String, String> map) {
		return memberDAO.searchMembers(map);
	}

	@Override
	public MemberVO searchMemberDetail(String email) {
		return memberDAO.searchMemberDetail(email);
	}

	// 마이페이지 비밀번호 업데이트
	public void updatePassword(MemberVO vo) {
		memberDAO.updatePassword(vo);
	}

	@Override
	// 마이페이지 회원 탈퇴
	public void memberWithdrawal(MemberVO vo) {
		memberDAO.memberWithdrawal(vo);
	}

}
