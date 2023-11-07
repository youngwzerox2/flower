package com.flower.dao;

import com.flower.vo.CompanyVO;

public interface CompanyDAO {

	// 회사정책 데이터 가져오기
	CompanyVO getCompanyPolicy() throws Exception;
}
