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
	
	@Override
	public int adminOrderConfirmation(AdminVO vo) {
		return adminDAO.adminOrderConfirmation(vo);
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

	@Override
	public Integer selectNewProductId() {
		return adminDAO.selectNewProductId();
	}
	
	@Override
	public int registerProduct(AdminVO adminVO) {
		return adminDAO.registerProduct(adminVO);
	}

	@Override
	public int registerProductImg(AdminVO adminVO) {
		return adminDAO.registerProductImg(adminVO);
	}

	@Override
	public List<AdminVO> searchInquiries(Map<String, String> map) {
		return adminDAO.searchInquiries(map);
	}
	
	@Override
	public AdminVO searchInquiryDetail(String inquiryId) {
		return adminDAO.searchInquiryDetail(inquiryId);
	}
	
	@Override
	public int inquiryAdminAnswer(AdminVO vo) {
		return adminDAO.inquiryAdminAnswer(vo);
	}
	
	@Override
	public List<AdminVO> searchReviews(Map<String, String> map) {
		return adminDAO.searchReviews(map);
	}
	
	@Override
	public AdminVO searchReviewDetail(String reviewId) {
		return adminDAO.searchReviewDetail(reviewId);
	}

	@Override
	public List<AdminVO> searchOrders(Map<String, String> map) {
		return adminDAO.searchOrders(map);
	}

	@Override
	public List<AdminVO> searchOrderProducts(String orderDetailNumber) {
		return adminDAO.searchOrderProducts(orderDetailNumber);
	}
	
	/**
	 * 설정 관련
	 * */
	@Override
	public List<AdminVO> selectPolicyColumn() {
		return adminDAO.selectPolicyColumn();
	}
	
	@Override
	public Map<String, String> selectPolicyValue(String column) {
		return adminDAO.selectPolicyValue(column);
	}

	@Override
	public int modifyPolicy(Map<String, String> map) {
		return adminDAO.modifyPolicy(map);
	}


}
