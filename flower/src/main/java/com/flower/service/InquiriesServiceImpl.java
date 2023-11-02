package com.flower.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flower.dao.InquiriesDAO;
import com.flower.dao.InquiriesDAOImpl;
import com.flower.vo.InquiriesVO;

@Service
public class InquiriesServiceImpl implements InquiriesService {
	
	@Autowired
	private InquiriesDAO inquiriesDao;

	@Override
	public List<InquiriesVO> selectList() {
		// TODO Auto-generated method stub
		return inquiriesDao.selectList();
	}

	@Override
	public List<InquiriesVO> selectList(Map map) {
		// TODO Auto-generated method stub
		return inquiriesDao.selectList(map);
	}

	@Override
	public InquiriesVO selectOne(int inquiries_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(InquiriesVO vo) {
		// TODO Auto-generated method stub
		return inquiriesDao.insert(vo);
	}

	@Override
	public int update(InquiriesVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int Inquiries_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int selectRowTotal() {
		// TODO Auto-generated method stub
		return inquiriesDao.selectRowTotal();
	}

	@Override
	public int selectRowTotal(Map map) {
		// TODO Auto-generated method stub
		return inquiriesDao.selectRowTotal(map);
	}

}
