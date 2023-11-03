package com.flower.dao;

import java.util.List;

import com.flower.vo.MemberAddressVO;
import com.flower.vo.MemberVO;

public interface MemberAddressDAO {

	//Mypage select MemberAddress
	public List<MemberAddressVO> selectMemberAddress(MemberVO vo);
}
