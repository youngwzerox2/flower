package com.flower.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flower.dao.ReviewsDAOImpl;
import com.flower.vo.InquiriesVO;
import com.flower.vo.ReviewsVO;

@Service
public class ReviewsServiceImpl implements ReviewsService {
	
	@Autowired
	ReviewsDAOImpl reviewsDao;
	
	@Override
	public List<ReviewsVO> selectList() {
		// TODO Auto-generated method stub
		return reviewsDao.selectList();
	}

	@Override
	public List<ReviewsVO> selectList(Map map) {
		// TODO Auto-generated method stub
		return reviewsDao.selectList(map);
	}

	@Override
	public ReviewsVO selectOne(String reviews_id) {
		// TODO Auto-generated method stub
		return reviewsDao.selectOne(reviews_id);
	}

	@Override
	public int selectRowTotal() {
		// TODO Auto-generated method stub
		return reviewsDao.selectRowTotal();
	}

	@Override
	public int selectRowTotal(Map map) {
		// TODO Auto-generated method stub
		return reviewsDao.selectRowTotal(map);
	}

	@Override
	public int insert(ReviewsVO vo) {
		// TODO Auto-generated method stub
		return reviewsDao.insert(vo);
	}

	@Override
	public int update(ReviewsVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String reviews_id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
