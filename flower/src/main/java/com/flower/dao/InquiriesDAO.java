package com.flower.dao;

import java.util.List;
import java.util.Map;

import com.flower.vo.InquiriesVO;

public interface InquiriesDAO {
	
	List<InquiriesVO> selectList();
	List<InquiriesVO> selectList(Map map);
	InquiriesVO selectOne(int inquiries_id);
	
	//추가
	int insert(InquiriesVO vo);
	
	//수정
	int update(InquiriesVO vo);
	
	//삭제
	int delete(int Inquiries_id);

}
