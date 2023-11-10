package com.flower.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.flower.vo.MemberProductImageVO;
import com.flower.vo.OrderTableVO;
import com.flower.vo.ReviewsVO;

@Repository
public class ReviewsDAOImpl implements ReviewsDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<OrderTableVO> selectList() {
		// TODO Auto-generated method stub
		System.out.println("List<OrderTableVO> selectList()");
		return sqlSession.selectList("reviews.orderSelect");
	}

	@Override
	public List<ReviewsVO> selectList(Map map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("reviews.reviewsListCondition", map);
	}

	@Override
	public ReviewsVO selectOne(String reviews_id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("reviews.reviewsOne", reviews_id);
	}

	@Override
	public int selectRowTotal() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("reviews.reviewsConditionRowTotal");
	}

	@Override
	public int selectRowTotal(Map map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("reviews.reviewsConditionRowTotal", map);
	}

	@Override
	public int insert(ReviewsVO vo) {
		
		System.out.println("ReviewDAOImpl >> insert");
		sqlSession.insert("reviews.reviewsInsert",vo);
		
		System.out.println(vo.toString());
		return sqlSession.insert("reviews.reviewsInsert", vo);
		
	}

	@Override
	public int update(ReviewsVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.update("reviews.reviewsUpdate", vo);
	}

	@Override
	public int delete(String reviews_id) {
		// TODO Auto-generated method stub
		return sqlSession.delete("reviews.reviewsDelete", reviews_id);
	}


}
