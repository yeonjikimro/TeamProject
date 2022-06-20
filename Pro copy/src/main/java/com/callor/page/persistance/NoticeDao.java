package com.callor.page.persistance;

import java.util.List;

import com.callor.page.model.NoticeVO;

public interface NoticeDao extends GenericDao<NoticeVO, String>{
	

	public List<NoticeVO> findBynotice_seq(int notice_seq);
}
