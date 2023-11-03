package com.flower.dao;

import java.util.List;
import java.util.Map;

import com.flower.vo.InquiriesVO;
import com.flower.vo.ReviewsVO;

public interface ReviewsDAO {
	
	List<ReviewsVO> selectList();
	List<ReviewsVO> selectList(Map map);
	InquiriesVO selectOne(int reviews_id);
	
	
	//전체 게시물 갯수
	int selectRowTotal();
	
	//검색 조건별 게시물 수
	int selectRowTotal(Map map);
	
	//추가
	int insert(ReviewsVO vo);
	
	//수정
	int update(ReviewsVO vo);
	
	//삭제
	int delete(int reviews_id);

}
