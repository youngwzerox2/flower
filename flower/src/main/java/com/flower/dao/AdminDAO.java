package com.flower.dao;

import java.util.List;
import java.util.Map;

import com.flower.vo.AdminVO;

public interface AdminDAO {

	/**
	 * 회원 관련
	 * */
	// 검색 조건별 회원 조회
	public List<AdminVO> searchMembers(Map<String, String> map);
	
	// 특정 회원 상세 조회
	public AdminVO searchMemberDetail(String email);
	
	// 특정 회원 이용 제한
	public int limitMember(String email);

	// 특정 회원의 신고 내역 조회
	public AdminVO searchReportContent(String reportId);

	// 신고 취소
	public int reportCancel(Map<String, String> map);
	
	// 특정 리뷰 삭제 (관리자)
	public int deleteReportTarget(String reviewId);
	
	/**
	 * 상품 관련
	 * */
	// 검색 조건별 상품 조회
	public List<AdminVO> searchProducts(Map<String, String> map);

	// 특정 상품 상세 조회
	public List<AdminVO> searchProductDetail(String productId);

	// 특정 상품 이미지 조회
	public List<AdminVO> searchProductImgs(String productId);
	
	// 특정 상품 노출 설정
	public int modifyProductVisible(Map<String, String> map);

	// 신규 상품ID 조회
	public Integer selectNewProductId();
	
	// 신규 상품 등록
	public int registerProduct(AdminVO adminVO);
	
	// 신규 상품 이미지 등록
	public int registerProductImg(AdminVO adminVO);
	
	// 검색 조건별 리뷰 조회
	public List<AdminVO> searchReviews(Map<String, String> map);
	
	// 특정 리뷰 상세 조회
	public AdminVO searchReviewDetail(String reviewId);
	
	// 검색 조건별 주문 조회
	public List<AdminVO> searchOrders(Map<String, String> map);
	
	// 특정 주문 상품 목록 조회
	public List<AdminVO> searchOrderProducts(String orderDetailNumber);
	
	/**
	 * 설정 관련
	 * */
	// policy 테이블 정보 조회
	public List<AdminVO> selectPolicyColumn();
	
	// policy 컬럼 내용 조회
	public Map<String, String> selectPolicyValue(String column);

	// policy 컬럼 내용 수정
	public int modifyPolicy(Map<String, String> map);






	


	

}
