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
	public String findEmailChk(String member_email) throws Exception;

	// 마이페이지 비밀번호 업데이트
	public void updatePassword(MemberVO vo);
	
	// 마이페이지 회원 탈퇴
	public void memberWithdrawal(MemberVO vo);
	
	// 비밀번호 초기화(찾기)
	public void changePassword(MemberVO vo) throws Exception;

	MemberVO loginWithEncryptedPassword(MemberVO vo) throws Exception;
	

}
