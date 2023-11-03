package com.flower.service;

import com.flower.vo.MemberVO;

public interface MemberService {

	// 회원가입 입력
	public void register(MemberVO vo) throws Exception; 

	// 로그인 입력
	public MemberVO login(MemberVO vo) throws Exception;
		
	// 이메일 중복체크
	public int idChk(MemberVO vo) throws Exception;
	
	// 이메일 찾기
	public String findEmail(String member_email) throws Exception;

}
