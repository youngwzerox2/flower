package com.flower.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.flower.vo.MemberVO;
import com.flower.vo.ProductVO;

@Repository
public class LoveDAOImpl implements LoveDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	//Mypage select Lovelist
	public List<ProductVO> selectLove(MemberVO vo) {
		System.out.println("mybatis: " + vo);
		List<ProductVO> aa = mybatis.selectList("LoveDAO.selectLove", vo);
		System.out.println(aa);
		return aa;
	}

	
}
