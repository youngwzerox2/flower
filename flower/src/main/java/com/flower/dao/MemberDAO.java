package com.flower.dao;

import java.util.List;
import java.util.Map;

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
	
	// 검색 조건별 회원 조회
	public List<MemberVO> searchMembers(Map<String, String> map);

	// 특정 회원 상세 조회
	public MemberVO searchMemberDetail(String email);
}
