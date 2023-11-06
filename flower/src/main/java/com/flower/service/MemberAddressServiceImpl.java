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

	@Override
	public void addAddress(MemberAddressVO avo) {
		dao.addAddress(avo);
		
	}

	@Override
	public void deleteAddress(Integer address_id) {
		dao.deleteAddress(address_id);
	}

	@Override
	public void updateAddress(MemberAddressVO avo) {
		dao.updateAddress(avo);
	}

	@Override
	public void replaceDefaultAddress(MemberAddressVO avo) {
		dao.replaceDefaultAddress(avo);
	}

}
