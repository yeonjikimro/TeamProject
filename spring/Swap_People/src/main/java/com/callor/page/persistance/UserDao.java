package com.callor.page.persistance;

import java.util.List;

import com.callor.page.model.UserVO;

public interface UserDao extends GenericDao<UserVO, String>{
	
	public List<UserVO> findByName(String name);
	

	public UserVO findByEmail(String email);
	
	public void create_user_table();

}
