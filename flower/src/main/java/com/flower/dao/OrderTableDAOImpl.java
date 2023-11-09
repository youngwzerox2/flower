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
	public List<OrderTableVO> selectOrderList(MemberVO mvo) {
		return mybatis.selectList("OrderTableDAO.selectOrder",mvo);
	}

	@Override
	public void insertOrder(List<OrderTableVO> orderList) {
		for(int i = 0; i < orderList.size(); ++i) {
			mybatis.insert("OrderTableDAO.insertOrder",orderList.get(i));
		}
	}

	@Override
	public List<OrderTableVO> selectOrderListbydetailnumber(OrderTableVO OTvo) {
		return mybatis.selectList("OrderTableDAO.selectOrderByDetailNumber",OTvo);
	}

	
}
