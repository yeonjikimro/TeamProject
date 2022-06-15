package com.callor.page.service;

import com.callor.page.model.UserVO;
import com.callor.page.persistance.UserDao;

public interface UserService extends UserDao{
	
	public UserVO login(UserVO userVO);
	public int join(UserVO userVO);

}
