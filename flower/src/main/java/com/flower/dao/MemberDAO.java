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
	
	// 이메일 찾기
	public String findEmail(String member_email) throws Exception;
		
	// 검색 조건별 회원 조회
	public List<MemberVO> searchMembers(Map<String, String> map);

	// 특정 회원 상세 조회
	public MemberVO searchMemberDetail(String email);
	
	// 마이페이지 비밀번호 업데이트
	public void updatePassword(MemberVO vo);
	
	// 마이페이지 회원 탈퇴
	public void memberWithdrawal(MemberVO vo);
}
