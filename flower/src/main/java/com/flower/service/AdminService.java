package com.flower.service;

import java.util.List;
import java.util.Map;

import com.flower.vo.AdminVO;

public interface AdminService {

	// 검색 조건별 회원 조회
	List<AdminVO> searchMembers(Map<String, String> map);
	
	// 특정 회원 상세 조회
	AdminVO searchMemberDetail(String email);
	
	// 특정 회원 이용 제한
	int limitMember(String email);
}