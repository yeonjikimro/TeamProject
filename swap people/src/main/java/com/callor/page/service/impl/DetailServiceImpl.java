package com.callor.page.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.callor.page.config.QualifierConfig;
import com.callor.page.model.PostingVO;
import com.callor.page.persistance.DetailDao;
import com.callor.page.service.DetailService;

@Service(QualifierConfig.SERVICE.DETAIL)
public class DetailServiceImpl implements DetailService{
	
	@Autowired
	private DetailDao dao;
	
	@Autowired
	private DetailService detailService;

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



	@Override
	public List<PostingVO> memberWrite(String memberWrite) {
		// TODO Auto-generated method stub
		
		
		List<PostingVO> member = dao.memberWrite(memberWrite);
		
		
		return member;
	}

	@Override
	public List<PostingVO> findByCat_code(String cat_code) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int postingCnt(PostingVO vO) {
		// TODO Auto-generated method stub
		return 0;
	}



	@Override
	public PostingVO postingDetail(PostingVO vO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PostingVO> getCatCode(String cat_code) {
		// TODO Auto-generated method stub
		
		return null;
	}

	@Override
	public List<PostingVO> getCatCode() {
		// TODO Auto-generated method stub
		return dao.getCatCode();
	}


}