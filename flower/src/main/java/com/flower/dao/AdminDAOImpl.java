package com.flower.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.flower.vo.AdminVO;

@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO{

	@Autowired
	private SqlSessionTemplate st;
	
	/**
	 * 회원 관련
	 * */
	@Override
	public List<AdminVO> searchMembers(Map<String, String> map) {
		return st.selectList("adminDAO.searchMembers", map);
	}

	@Override
	public AdminVO searchMemberDetail(String email) {
		return st.selectOne("adminDAO.searchMemberDetail", email);
	}

	@Override
	public int limitMember(String email) {
		return st.update("adminDAO.limitMember", email);
	}
	
	@Override
	public AdminVO searchReportContent(String reportId) {
		return st.selectOne("adminDAO.searchReportContent", reportId);
	}
	
	@Override
	public int reportCancel(Map<String, String> map) {
		return st.update("adminDAO.reportCancel", map);
	}
	
	@Override
	public int deleteReportTarget(String reviewId) {
		return st.update("adminDAO.deleteReportTarget", reviewId);
	}
	
	
	/**
	 * 상품 관련
	 * */
	@Override
	public List<AdminVO> searchProducts(Map<String, String> map) {
		return st.selectList("adminDAO.searchProducts", map);
	}

	@Override
	public List<AdminVO> searchProductDetail(String productId) {
		return st.selectList("adminDAO.searchProductDetail", productId);
	}

	@Override
	public List<AdminVO> searchProductImgs(String productId) {
		return st.selectList("adminDAO.searchProductImgs", productId);
	}	

	@Override
	public int modifyProductVisible(Map<String, String> map) {
		return st.update("adminDAO.modifyProductVisible", map);
	}

	/**
	 * 설정 관련
	 * */
	@Override
	public int selectPolicyColumnCnt() {
		return st.selectOne("adminDAO.selectPolicyColumnCnt");
	}

	@Override
	public List<AdminVO> selectPolicyColumn() {
		return st.selectList("adminDAO.selectPolicyColumn");
	}


}
