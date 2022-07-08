package com.callor.page.service;

import java.util.List;

import com.callor.page.model.PostingVO;
import com.callor.page.persistance.DetailDao;

public interface DetailService extends DetailDao {
	
	int postingCnt(PostingVO vo);

	List<PostingVO> getCatCode(String cat_code);

	PostingVO postingDetail(PostingVO vo);
	
}