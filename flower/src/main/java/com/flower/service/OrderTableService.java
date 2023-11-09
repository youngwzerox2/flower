package com.flower.service;

import java.util.List;

import com.flower.vo.MemberVO;
import com.flower.vo.OrderTableVO;

public interface OrderTableService {
	
	//Mypage select orderlist
	public List<OrderTableVO> selectOrderList(MemberVO vo);
	
	//Insert order
	public void insertOrder(List<OrderTableVO> orderList);
	
	//detailorderpage select orderlist
	public List<OrderTableVO> selectOrderListbydetailnumber(OrderTableVO OTvo);
}
