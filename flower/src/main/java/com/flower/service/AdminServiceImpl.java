package com.flower.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flower.dao.AdminDAO;
import com.flower.vo.AdminVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDAO adminDAO;

	/**
	 * 회원 관련
	 * */
	@Override
	public List<AdminVO> searchMembers(Map<String, String> map) {
		return adminDAO.searchMembers(map);
	}

	@Override
	public AdminVO searchMemberDetail(String email) {
		return adminDAO.searchMemberDetail(email);
	}
	
	@Override
	public int limitMember(String email) {
		return adminDAO.limitMember(email);
	}

	@Override
	public AdminVO searchReportContent(String reportId) {
		return adminDAO.searchReportContent(reportId);
	}
	
	@Override
	public int reportCancel(Map<String, String> map) {
		return adminDAO.reportCancel(map);
	}
	
	@Override
	public int deleteReportTarget(String reviewId) {
		return adminDAO.deleteReportTarget(reviewId);
	}
	
	
	/**
	 * 상품 관련
	 * */
	@Override
	public List<AdminVO> searchProducts(Map<String, String> map) {
		return adminDAO.searchProducts(map);
	}
	
	@Override
	public List<AdminVO> searchProductDetail(String productId) {
		return adminDAO.searchProductDetail(productId);
	}

	@Override
	public List<AdminVO> searchProductImgs(String productId) {
		return adminDAO.searchProductImgs(productId);
	}

	@Override
	public int modifyProductVisible(Map<String, String> map) {
		return adminDAO.modifyProductVisible(map);
	}

	/**
	 * 설정 관련
	 * */
	// policy 개수 확인
	@Override
	public int selectPolicyColumnCnt() {
		return adminDAO.selectPolicyColumnCnt();
	}

	@Override
	public List<AdminVO> selectPolicyColumn() {
		return adminDAO.selectPolicyColumn();
	}

}
