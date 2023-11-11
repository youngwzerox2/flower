package com.flower.dao;

import java.util.List;
import java.util.Map;

import com.flower.vo.MemberProductImageVO;
import com.flower.vo.OrderTableVO;
import com.flower.vo.ReviewsVO;

public interface ReviewsDAO {
	
	List<OrderTableVO> selectList();
	List<ReviewsVO> selectList(Map map);
	ReviewsVO selectOne(String reviews_id);
	
	//전체 게시물 갯수
	int selectRowTotal();
	
	//검색 조건별 게시물 수
	int selectRowTotal(Map map);
	
	//추가
	int insert(ReviewsVO vo, MemberProductImageVO file_vo);
	
	//수정
	int update(ReviewsVO vo);
	
	//삭제
	int delete(String reviews_id);

}
