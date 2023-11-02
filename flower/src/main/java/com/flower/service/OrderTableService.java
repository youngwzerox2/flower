package com.flower.service;

import java.util.List;

import com.flower.vo.MemberVO;
import com.flower.vo.OrderTableVO;

public interface OrderTableService {
	
	//Mypage select orderlist
	public List<OrderTableVO> selectOrderList(MemberVO vo);
}
