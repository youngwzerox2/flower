package com.flower.dao;

import java.util.List;

import com.flower.vo.MemberVO;

import com.flower.vo.MemberVO;

public interface MemberDAO {
	// 전체조회
	public List<MemberVO> selectAllMembers();
	
	// 회원가입
	public void register(MemberVO vo) throws Exception;
	
	// 로그인
	public MemberVO login(MemberVO vo) throws Exception;
	
	// 이메일 중복체크
	public int idChk(MemberVO vo) throws Exception;
}
