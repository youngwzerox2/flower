package com.flower.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.flower.dao.CompanyDAO;
import com.flower.vo.CompanyVO;

@Service("companyService")
public class CompanyServiceImpl implements CompanyService{

	@Autowired
	private CompanyDAO companyDAO;

	@Override
	@Transactional
	public CompanyVO getCompanyPolicy() throws Exception {
		return companyDAO.getCompanyPolicy();
	}
	
	

}
