package com.callor.page.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.callor.page.model.NoticeVO;
import com.callor.page.model.PostingVO;
import com.callor.page.persistance.NoticeDao;
import com.callor.page.service.NoticeService;

@Service
public class NoticeServiceImpl implements NoticeService{

	
	@Autowired
	private NoticeDao notidao;
	
	@Override
	public List<NoticeVO> selectAll() {
		// TODO Auto-generated method stub
		return notidao.selectAll();
	}

	@Override
	public NoticeVO findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(NoticeVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(NoticeVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}





	@Override
	public List<NoticeVO> findBynotice_seq(int notice_seq) {
		// TODO Auto-generated method stub
		return null;
	}

}
