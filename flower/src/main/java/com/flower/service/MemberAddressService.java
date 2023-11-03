package com.flower.service;

import java.util.List;

import com.flower.vo.MemberAddressVO;
import com.flower.vo.MemberVO;

public interface MemberAddressService {
	
	//Mypage select MemberAddress
	public List<MemberAddressVO> selectMemberAddress(MemberVO vo);
}
