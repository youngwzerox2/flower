package com.flower.dao;

import java.util.List;

import com.flower.vo.MemberVO;
import com.flower.vo.OrderTableVO;

public interface OrderTableDAO {

	////Mypage select orderlist
	public List<OrderTableVO> selectOrderList(MemberVO vo);
}
