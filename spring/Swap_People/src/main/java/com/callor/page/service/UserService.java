package com.callor.page.service;

import com.callor.page.model.UserVO;
import com.callor.page.persistance.GenericDao;

public interface UserService extends GenericDao<UserVO, String>{
	
	public UserVO login(UserVO userVO);
	public int join(UserVO userVO);

}
