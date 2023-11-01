package com.flower.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flower.dao.MemberDAO;
import com.flower.vo.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDAO memberDAO;

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
}
