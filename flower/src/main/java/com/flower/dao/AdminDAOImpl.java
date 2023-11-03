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
}
