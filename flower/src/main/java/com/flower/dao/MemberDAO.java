package com.flower.dao;

import java.util.List;

import org.springframework.ui.Model;

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
	
	// 이메일 찾기
	public String findEmail(String member_email) throws Exception;
		

}
