package com.callor.page.persistance;

import java.util.List;

import com.callor.page.model.CategoryVO;


public interface CategoryDao extends GenericDao<CategoryVO, String> {

	public List<CategoryVO> findByName(String name);
	public List<CategoryVO> findByCode(String code);
	
	
}
