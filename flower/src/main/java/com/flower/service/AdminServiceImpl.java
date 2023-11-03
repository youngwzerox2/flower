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

}
