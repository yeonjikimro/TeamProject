package com.callor.page.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.callor.page.model.PostingVO;
import com.callor.page.model.Trading_listVO;
import com.callor.page.service.PostingService;
import com.callor.page.service.TradingService;

public class TradingServiceImpl implements TradingService{

	@Autowired
	private PostingService posting;
	
	@Override
	public List<PostingVO> setPosting() {
		List<PostingVO> postingVO = posting.selectAll();
		return postingVO;
	}

	@Override
	public List<Trading_listVO> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Trading_listVO findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(Trading_listVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Trading_listVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}


}
