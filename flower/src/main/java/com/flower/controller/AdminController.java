package com.flower.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.flower.service.AdminService;
import com.flower.vo.AdminVO;

@RestController
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	/* 
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-01
	 * 메서드	: adminMain
	 * 인자	: void
	 * 반환	: String
	 * 설명	: 관리자 페이지 이동
	 * */
	@RequestMapping("admin/login")
	public ModelAndView adminMain() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/adminHome");
        return modelAndView;
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-02
	 * 메서드	: searchMembers
	 * 인자	: searchKey, searchValue
	 * 반환	: List<AdminVO>
	 * 설명	: 검색조건에 맞는 모든 회원 조회
	 * */
	@GetMapping("admin/searchMembers")
	public List<AdminVO> searchMembers(String searchKey, String searchValue) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchKey", searchKey);
		map.put("searchValue", searchValue);
		return adminService.searchMembers(map);
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-02
	 * 메서드	: searchMemberDetail
	 * 인자	: email
	 * 반환	: AdminVO
	 * 설명	: 특정 회원 상세 조회
	 * */
	@GetMapping("admin/searchMemberDetail")
	public AdminVO searchMemberDetail(String email) {
		return adminService.searchMemberDetail(email);
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-03
	 * 메서드	: limitMember
	 * 인자	: email
	 * 반환	: result
	 * 설명	: 특정 회원 제한 조치
	 * */
	@PostMapping("admin/limitMember")
	public int limitMember(String email) {
		return adminService.limitMember(email);
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-06
	 * 메서드	: searchProducts
	 * 인자	: searchKey, searchValue
	 * 반환	: List<AdminVO>
	 * 설명	: 검색조건에 맞는 모든 상품 조회
	 * */
	@GetMapping("admin/searchProducts")
	public List<AdminVO> searchProducts(String searchKey, String searchValue) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchKey", searchKey);
		map.put("searchValue", searchValue);
		return adminService.searchProducts(map);
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-06
	 * 메서드	: searchProductDetail
	 * 인자	: productId
	 * 반환	: AdminVO
	 * 설명	: 특정 상품 상세 조회
	 * */
	@GetMapping("admin/searchProductDetail")
	public Map<String, List<?>> searchProductDetail(String productId) {
		Map<String, List<?>> result = new HashMap<String, List<?>>();
		List<AdminVO> product 	= adminService.searchProductDetail(productId);
		List<AdminVO> imgs 		= adminService.searchProductImgs(productId);
		
		result.put("product", product);
		result.put("imgs", imgs);
		
		return result;
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-06
	 * 메서드	: modifyProductVisible
	 * 인자	: email
	 * 반환	: Integer
	 * 설명	: 특정 회원 제한 조치
	 * */
	@PostMapping("admin/modifyProductVisible")
	public int modifyProductVisible(String proId, String proStat) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("proId", proId);
		map.put("proStat", proStat.equals("Y") ? "N" : "Y");
		
		return adminService.modifyProductVisible(map);
	}

	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-07
	 * 메서드	: searchReportContent
	 * 인자	: reportId
	 * 반환	: AdminVO
	 * 설명	: 특정 회원의 신고 내역 조회
	 * */
	@GetMapping("admin/searchReportContent")
	public AdminVO searchReportContent(String realId) {
		return adminService.searchReportContent(realId);
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-07
	 * 메서드	: reportCancel
	 * 인자	: memberId
	 * 반환	: Integer
	 * 설명	: 특정 회원의 신고 내역 조회
	 * */
	@PostMapping("admin/reportCancel")
	public int reportCancel(String memberId, String productId) {
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("memberId", memberId);
		map.put("productId", productId);
		
		return adminService.reportCancel(map);
	}
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-07
	 * 메서드	: deleteReportTarget
	 * 인자	: reviewId
	 * 반환	: Integer
	 * 설명	: 특정 리뷰 삭제 (관리자)
	 * */
	@PostMapping("admin/deleteReportTarget")
	public int deleteReportTarget(String reviewId) {
		return adminService.deleteReportTarget(reviewId);
	}
	
	
	/*
	 * 작성자	: 백두산
	 * 작성일	: 2023-11-07
	 * 메서드	: selectPolicyColumn
	 * 인자	: void
	 * 반환	: Integer
	 * 설명	: Policy 테이블 내 컬럼 조회
	 * */
	@GetMapping("admin/selectPolicyColumn")
	public  List<AdminVO> selectPolicyColumn() {
		return adminService.selectPolicyColumn();
	}
	
}