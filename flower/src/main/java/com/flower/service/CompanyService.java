package com.flower.service;

import com.flower.vo.CompanyVO;

public interface CompanyService {

	// 회사정책 데이터 가져오기
	CompanyVO getCompanyPolicy() throws Exception;
}
