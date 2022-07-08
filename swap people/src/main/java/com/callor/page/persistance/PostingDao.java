package com.callor.page.persistance;

import java.util.List;

import com.callor.page.model.PostingVO;

public interface PostingDao extends GenericDao<PostingVO, Long>{

	public List<PostingVO> findByTitle(String title);
	public List<PostingVO> findByUsername(String username);
	public List<PostingVO> findByCont(String cont);
	public List<PostingVO> findByCars(String cars);
	public List<PostingVO> findByCat_code(String cat_code);
	public List<PostingVO> findByAddr(String addr);
	public List<PostingVO> findByAddrDtl(String addr_dtl);
	public List<PostingVO> findByGoods(String goods);
	public int postingCnt(PostingVO VO);
	public PostingVO getCatCode(String code);
	public List<PostingVO> getCateListAll();
	public List<PostingVO> memberWrite(String memberWrite);
	public int situ_update(PostingVO vo);
}