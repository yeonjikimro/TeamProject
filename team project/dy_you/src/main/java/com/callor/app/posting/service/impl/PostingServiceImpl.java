package com.callor.app.posting.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.callor.app.config.QualifierConfig;
import com.callor.app.persistance.PostingDao;
import com.callor.app.posting.model.PostingVO;
import com.callor.app.posting.service.PostingService;

@Service(QualifierConfig.SERVICE.POSTING)
public class PostingServiceImpl implements PostingService{
	
	@Autowired
	private PostingDao dao;

	@Override
	public List<PostingVO> selectAll() {
		List<PostingVO> postings = dao.selectAll();
		return postings;
	}

	@Override
	public PostingVO findById(String id) {
		// TODO Auto-generated method stub
		PostingVO postingVO = dao.findById(id);
		return postingVO;
	}

	@Override
	public int insert(PostingVO vo) {
		int ret=dao.insert(vo);
		return ret;
	}

	@Override
	public int update(PostingVO vo) {
		dao.update(vo);
		return 0;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		dao.delete(id);
		return 0;
	}


	@Override
	public List<PostingVO> findByTitle(String title) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<PostingVO> findByCont(String cont) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<PostingVO> findByCars(String cars) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<PostingVO> findByCars2(String cars2) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<PostingVO> findByAddr(String addr) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<PostingVO> findByAddrDtl(String addr_dtl) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PostingVO> findByGoods(String goods) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PostingVO> findByPosting_seq(String Posting_seq) {
		// TODO Auto-generated method stub
		return null;
	}

}
