package com.flower.service;

import java.util.List;
import java.util.Map;

import com.flower.vo.AdminVO;

public interface AdminService {

	/**
	 * 회원 관련
	 * */
	// 검색 조건별 회원 조회
	List<AdminVO> searchMembers(Map<String, String> map);
	
	// 특정 회원 상세 조회
	AdminVO searchMemberDetail(String email);
	
	// 특정 회원 이용 제한
	int limitMember(String email);

	/**
	 * 상품 관련
	 * */
	// 검색 조건별 상품 조회
	List<AdminVO> searchProducts(Map<String, String> map);
	
	// 특정 상품 상세 조회
	List<AdminVO> searchProductDetail(String productId);

	// 특정 상품 이미지 조회
	List<AdminVO> searchProductImgs(String productId);

}
