package com.callor.project.persistance;

import java.util.List;

import com.callor.project.model.CategoryVO;


public interface CategoryDao extends GenericDao<CategoryVO, String> {

	public List<CategoryVO> findByName(String name);
	public List<CategoryVO> findByCode(String code);
	
	
}
