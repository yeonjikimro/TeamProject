package com.callor.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.callor.project.model.CategoryVO;
import com.callor.project.persistance.CategoryDao;
import com.callor.project.service.CategoryService;

@Service
public class CategorySerVIceImpl implements CategoryService {

	@Autowired
	private CategoryDao catDao;
	
	@Override
	public List<CategoryVO> findByName(String name) {
//		List<Category> catlist = 
		return null;
	}

	@Override
	public List<CategoryVO> findByCode(String code) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CategoryVO> selectAll() {
		// TODO Auto-generated method stub
		return catDao.selectAll();
	}

	@Override
	public CategoryVO findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(CategoryVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(CategoryVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
