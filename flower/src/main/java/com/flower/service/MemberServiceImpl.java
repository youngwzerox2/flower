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
	public String findEmailChk(String member_email) throws Exception {
		String result = memberDAO.findEmailChk(member_email);
		return result;
		 
	}

	public List<MemberVO> searchMembers(Map<String, String> map) {
		return memberDAO.searchMembers(map);
	}

	@Override
	public MemberVO searchMemberDetail(String email) {
		return memberDAO.searchMemberDetail(email);
	}

}
