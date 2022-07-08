package com.callor.page.service;

import java.util.List;

import com.callor.page.model.PostingVO;
import com.callor.page.persistance.PostingDao;

public interface PostingService extends PostingDao {
	
	public int postingCnt(PostingVO vo);
	
	//public List<PostingVO> getCateListAll();

	
}