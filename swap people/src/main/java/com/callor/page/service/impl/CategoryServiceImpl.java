package com.callor.page.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.callor.page.config.QualifierConfig;
import com.callor.page.model.CategoryVO;
import com.callor.page.model.PostingVO;
import com.callor.page.persistance.CategoryDao;
import com.callor.page.service.CategoryService;

@Service(QualifierConfig.SERVICE.Category)
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryDao catDao;
	
	@Override
	public List<CategoryVO> findByName(String name) {
		List<CategoryVO> catlist = catDao.selectAll(); 
		return catlist;
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
