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

}
