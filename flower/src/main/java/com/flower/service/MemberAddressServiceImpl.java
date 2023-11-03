package com.flower.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flower.dao.MemberAddressDAO;
import com.flower.vo.MemberAddressVO;
import com.flower.vo.MemberVO;

@Service
public class MemberAddressServiceImpl implements MemberAddressService {

	@Autowired
	MemberAddressDAO dao;
	
	@Override
	//Mypage select MemberAddress
	public List<MemberAddressVO> selectMemberAddress(MemberVO vo) {
		return dao.selectMemberAddress(vo);
	}

}
