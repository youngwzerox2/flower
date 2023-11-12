package com.flower.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.flower.vo.CompanyVO;

@Repository("companyDAO")
public class CompanyDAOImpl implements CompanyDAO{

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public CompanyVO getCompanyPolicy() throws Exception {
		CompanyVO companyPolicy = mybatis.selectOne("companyDAO.getCompanyPolicy");
		return companyPolicy;
	}
	
	

}
