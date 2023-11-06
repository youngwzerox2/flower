package com.flower.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.flower.vo.MemberAddressVO;
import com.flower.vo.MemberVO;

@Repository
public class MemberAddressDAOImpl implements MemberAddressDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	//Mypage select MemberAddress
	public List<MemberAddressVO> selectMemberAddress(MemberVO vo) {
		return mybatis.selectList("memberaddressDAO.MemberAddressList", vo);
	}

	@Override
	public void addAddress(MemberAddressVO avo) {
		mybatis.insert("memberaddressDAO.MemberAddAddress",avo);
	}

	@Override
	public void deleteAddress(Integer address_id) {
		mybatis.delete("memberaddressDAO.MemberDeleteAddress",address_id);
	}

	@Override
	public void updateAddress(MemberAddressVO vo) {
		mybatis.update("memberaddressDAO.MemberUpdateAddress",vo);
	}

	@Override
	public void replaceDefaultAddress(MemberAddressVO avo) {
		mybatis.update("memberaddressDAO.replaceDefaultAddress",avo);
	}

}
