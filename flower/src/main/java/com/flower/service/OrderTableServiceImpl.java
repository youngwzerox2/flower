package com.flower.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flower.dao.OrderTableDAO;
import com.flower.vo.MemberVO;
import com.flower.vo.OrderTableVO;

@Service
public class OrderTableServiceImpl implements OrderTableService{

	@Autowired
	private OrderTableDAO dao;
	
	@Override
	//Mypage select orderlist
	public List<OrderTableVO> selectOrderList(MemberVO vo) {
		return dao.selectOrderList(vo);
	}

	@Override
	public void insertOrder(List<OrderTableVO> orderList) {
		dao.insertOrder(orderList);
	}

	@Override
	public List<OrderTableVO> selectOrderListbydetailnumber(OrderTableVO OTvo) {
		return dao.selectOrderListbydetailnumber(OTvo);
	}

}
