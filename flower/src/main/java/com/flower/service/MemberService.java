package com.flower.service;

import java.util.List;

import com.flower.vo.MemberVO;

public interface MemberService {

	// 전체 조회
	List<MemberVO> selectAllMembers();
	
	// 회원가입 입력
	public void register(MemberVO vo) throws Exception; 

	// 로그인 입력
	public MemberVO login(MemberVO vo) throws Exception;
		
	// 이메일 중복체크
	public int idChk(MemberVO vo) throws Exception;
}
