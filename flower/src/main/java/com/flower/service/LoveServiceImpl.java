package com.flower.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flower.dao.LoveDAO;
import com.flower.vo.MemberVO;
import com.flower.vo.ProductVO;

@Service
public class LoveServiceImpl implements LoveService {
	
	@Autowired
	LoveDAO dao;
	
	//Mypage select Lovelist
	public List<ProductVO> selectLove(MemberVO vo) {
		return dao.selectLove(vo);
	}

}
