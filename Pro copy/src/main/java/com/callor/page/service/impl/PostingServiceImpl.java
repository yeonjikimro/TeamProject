package com.callor.page.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.callor.page.config.QualifierConfig;
import com.callor.page.model.PostingVO;
import com.callor.page.persistance.PostingDao;
import com.callor.page.service.PostingService;

@Service(QualifierConfig.SERVICE.POSTING)
public class PostingServiceImpl implements PostingService{
	
	@Autowired
	private PostingDao postDao;
	
	@Autowired
	private PostingService postingService;

	@Override
	public List<PostingVO> selectAll() {
		List<PostingVO> postings = postDao.selectAll();
		return postings;
	}

	@Override
	public int insert(PostingVO vo) {
		int ret=postDao.insert(vo);
		return ret;
	}

	@Override
	public int update(PostingVO vo) {
		postDao.update(vo);
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
	public List<PostingVO> memberWrite(String memberWrite) {
		// TODO Auto-generated method stub
		
		
		List<PostingVO> member = postDao.memberWrite(memberWrite);
		
		
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
	public PostingVO getCatCode(String cat_code) {
		// TODO Auto-generated method stub
		return postDao.getCatCode(cat_code);
	}


	@Override
	public int situ_update(PostingVO vo) {
		// TODO Auto-generated method stub
		return postDao.situ_update(vo);
	}

	@Override
	public List<PostingVO> findByUsername(String username) {
		// TODO Auto-generated method stub
		return postDao.findByUsername(username);
	}



	@Override
	public PostingVO findById(Long id) {
		PostingVO postingVO = postDao.findById(id);
		return postingVO;
	}

	@Override
	public int delete(Long id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<PostingVO> getCateListAll() {
		// TODO Auto-generated method stub
		return postDao.getCateListAll();
	}


}