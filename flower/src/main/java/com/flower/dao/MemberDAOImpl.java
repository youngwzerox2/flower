package com.flower.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.flower.vo.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<MemberVO> selectAllMembers() {
		return mybatis.selectList("memberDAO.selectAllMembers");
	}
	
	@Override
	public void register(MemberVO vo) throws Exception{
		System.out.println("===> Mybatis register() 호출");
		System.out.println(vo.toString());
		mybatis.insert("memberDAO.register", vo);
	}

	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		System.out.println("===> Mybatis login() 호출");
		//System.out.println(vo.toString());
		
		MemberVO result = mybatis.selectOne("memberDAO.login", vo);
		System.out.println(result);
		
		return result;
		
	}

	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = mybatis.selectOne("memberDAO.idChk", vo);
		return result;
	}

	@Override
	public String findEmail(String member_email) throws Exception {	
		String result = mybatis.selectOne("memberDAO.findEmail", member_email);
		return result;
	}


}
