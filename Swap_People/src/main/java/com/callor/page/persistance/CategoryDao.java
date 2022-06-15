package com.callor.page.persistance;

import java.util.List;

import com.callor.page.model.CategoryVO;


public interface CategoryDao extends GenericDao<CategoryVO, String> {

	public List<CategoryVO> findByName(String name);
<<<<<<< HEAD
	public CategoryVO findByCode(String code);
=======
	public List<CategoryVO> findByCode(String code);
>>>>>>> 4243f35aad7aaca97b3050d6e53234b269664be7
	
	
}
