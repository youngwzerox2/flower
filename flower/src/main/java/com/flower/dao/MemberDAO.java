package com.flower.dao;

import com.flower.vo.MemberVO;

public interface MemberDAO {
	
	// 회원가입
	public void register(MemberVO vo) throws Exception;
	
	// 로그인
	public MemberVO login(MemberVO vo) throws Exception;
	
	// 이메일 중복체크
	public int idChk(MemberVO vo) throws Exception;
	
	// 이메일 찾기
	public String findEmailChk(String member_email) throws Exception;

}
