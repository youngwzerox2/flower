package com.flower.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.flower.vo.MemberVO;
import com.flower.vo.OrderTableVO;

@Repository
public class OrderTableDAOImpl implements OrderTableDAO{

	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	//Mypage select orderlist
	public List<OrderTableVO> selectOrderList(MemberVO vo) {
		return mybatis.selectList("OrderTableVO.selectOrder",vo);
	}

	
}
