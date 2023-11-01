package com.flower.dao;

import java.util.List;

import com.flower.vo.MemberVO;

public interface MemberDAO {
	public List<MemberVO> selectAllMembers();
}
