package com.flower.dao;

import java.util.List;

import com.flower.vo.MemberVO;
import com.flower.vo.ProductVO;

public interface LoveDAO {
	
	//Mypage select Lovelist
	public List<ProductVO> selectLove(MemberVO vo);

}
