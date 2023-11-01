package com.flower.service;

import java.util.List;

import com.flower.vo.MemberVO;

public interface MemberService {

	// 전체 조회
	List<MemberVO> selectAllMembers();
	
}
