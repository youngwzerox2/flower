package com.flower.service;

import java.util.List;

import com.flower.vo.MemberAddressVO;
import com.flower.vo.MemberVO;

public interface MemberAddressService {
	
	//Mypage select MemberAddress
	public List<MemberAddressVO> selectMemberAddress(MemberVO vo);
	
	//Mypage insert MemberAddress
	public void addAddress(MemberAddressVO vo);
	
	//Mypage delete MemberAddress
	public void deleteAddress(Integer address_id);
	
	//Mypage update MemberAddress
	public void updateAddress(MemberAddressVO vo);
	
	//Mypage replaceDefaultAddres
	public void replaceDefaultAddress(MemberAddressVO avo);
}
