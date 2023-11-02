package com.flower.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.flower.vo.InquiriesVO;

@Repository
public class InquiriesDAOImpl implements InquiriesDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<InquiriesVO> selectList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("inquiries.inquiriesSelect");
	}

	@Override
	public List<InquiriesVO> selectList(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public InquiriesVO selectOne(int reviews_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(InquiriesVO vo) {
		// TODO Auto-generated method stub
		System.out.println(vo.getInquiries_title());
		return sqlSession.insert("inquiries.inquiriesInsert", vo);
	}

	@Override
	public int update(InquiriesVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int Inquiries_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
	

}