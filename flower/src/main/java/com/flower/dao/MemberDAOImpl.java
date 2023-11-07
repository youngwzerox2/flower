package com.flower.dao;

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
		// 로그인한 회원의 장바구니 상품목록 개수 by Jin
		Integer member_cart_quan = mybatis.selectOne("memberDAO.getCartQuan", result.getMember_id());
		result.setMember_cart_quan(member_cart_quan);
		System.out.println(result);
		
		return result;
		
	}

	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = mybatis.selectOne("memberDAO.idChk", vo);
		return result;
	}

	@Override
	public String findEmailChk(String member_email) throws Exception {	 
		return mybatis.selectOne("memberDAO.findEmailChk", member_email);
	}

	@Override
	// 마이페이지 비밀번호 업데이트, 비밀번호 초기화(찾기)
	public void updatePassword(MemberVO vo) {
		mybatis.update("memberDAO.updatePassword",vo);
	}

	@Override
	// 마이페이지 회원 탈퇴
	public void memberWithdrawal(MemberVO vo) {
		mybatis.update("memberDAO.memberWithdrawal",vo);
	}

	@Override
	public void changePassword(MemberVO vo) throws Exception {
		mybatis.update("memberDAO.changePassword",vo); 
	}



}
