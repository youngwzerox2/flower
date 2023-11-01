package com.flower.service;

import java.util.List;

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
		// TODO Auto-generated method stub
		return memberDAO.selectAllMembers();
	}

}
