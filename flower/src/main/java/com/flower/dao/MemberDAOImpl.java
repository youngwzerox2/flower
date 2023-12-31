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
		mybatis.insert("memberDAO.register", vo);
	}

	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		
		MemberVO result = mybatis.selectOne("memberDAO.login", vo);
		
		// 로그인에 성공했을 경우, 로그인한 회원의 장바구니 상품목록 개수 가져온다by Jin
		if(result != null) {
			Integer member_cart_quan = mybatis.selectOne("memberDAO.getCartQuan", result.getMember_id());
			if(member_cart_quan == null) {
				member_cart_quan = 0;
			}
			result.setMember_cart_quan(member_cart_quan);
			
		}
		
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
