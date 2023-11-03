package com.flower.service;

import java.util.List;
import java.util.Map;

import com.flower.vo.InquiriesVO;
import com.flower.vo.MemberVO;

public interface InquiriesService {
	
	List<InquiriesVO> selectList();
	List<InquiriesVO> selectList(Map map);
	InquiriesVO selectOne(int inquiries_id);
	
	//전체 게시물 갯수
	int selectRowTotal();
	
	//검색 조건별 게시물 수
	int selectRowTotal(Map map);
	
	//추가
	int insert(InquiriesVO vo);
	
	//수정
	int update(InquiriesVO vo);
	
	//삭제
	int delete(int Inquiries_id);
	
	//Mypage selectMyList
	List<InquiriesVO> selectMyList(MemberVO vo);

}
