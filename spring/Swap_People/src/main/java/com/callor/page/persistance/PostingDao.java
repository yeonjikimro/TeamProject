package com.callor.page.persistance;

import java.util.List;

import com.callor.page.model.PostingVO;

public interface PostingDao extends GenericDao<PostingVO, String>{

	public List<PostingVO> findByPosting_seq(String Posting_seq);
	public List<PostingVO> findByTitle(String title);
	public List<PostingVO> findByCont(String cont);
	public List<PostingVO> findByCars(String cars);
	public List<PostingVO> findByCars2(String cars2);
	public List<PostingVO> findByAddr(String addr);
	public List<PostingVO> findByAddrDtl(String addr_dtl);
	public List<PostingVO> findByGoods(String goods);
}