package com.flower.service;

import java.util.List;

import com.flower.vo.MemberVO;
import com.flower.vo.ProductVO;

public interface LoveService {

	//Mypage select Lovelist
	public List<ProductVO> selectLove(MemberVO vo);
}
