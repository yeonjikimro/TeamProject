package com.callor.page.persistance;

import java.util.List;

import com.callor.page.model.PostingVO;
import com.callor.page.model.Trading_listVO;

public interface TradingListDao extends GenericDao<Trading_listVO, String>{
	public List<PostingVO> setPosting();

}
