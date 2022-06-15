package com.callor.page.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.callor.page.config.QualifierConfig;
import com.callor.page.model.PostingVO;
import com.callor.page.model.UserVO;
import com.callor.page.persistance.UserDao;
import com.callor.page.service.UserService;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Service(QualifierConfig.SERVICE.USER_V1)
public class UserServiceImplV1 implements UserService{

	@Autowired
	protected UserDao userDao;
	
	@Autowired
	@Override
	public void create_user_table() {
		try {
			userDao.create_user_table();
			log.debug("USER TABLE OK!!");
		} catch (Exception e) {
			log.debug("USER TABLE CREATE ERROR!!");
		}
	}
	



	@Override
	public UserVO findByEmail(String email) {
		return userDao.findByEmail(email);
	}

	@Override
	public List<UserVO> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserVO findById(String id) {
		return userDao.findById(id);
	}

	@Override
	public int insert(UserVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(UserVO vo) {
		// TODO Auto-generated method
		userDao.update(vo);
		return 0;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public UserVO login(UserVO userVO) {

		UserVO loginUser = userDao.findById(userVO.getUsername());
		if(loginUser != null 
				&& loginUser.getPassword().equals(userVO.getPassword())) {
			return loginUser;
		}
		return null;
	}

	/*
	 * 최초로 회원가입을 하는 USER 는 ADMIN 권한을 부여하고
	 * 그외는 USER 권한을 부여하겠다
	 */
	@Override
	public int join(UserVO userVO) {

		/*
		 * 가입요청한 정보가 최초인지 검사하여 최초로 가입요청을 한 것이면
		 * 현재 사용자의 role 정보를 ADMIN 으로 설정한다
		 */
		List<UserVO> users = userDao.selectAll();
		if(users == null || users.size() < 1) {
			userVO.setRole("ADMIN");
		} else {
			userVO.setRole("GUEST");
		}
		int ret = userDao.insert(userVO);
		return ret;
		
	}


	@Override
	public List<UserVO> findByID(String username) {
		// TODO Auto-generated method stub
		return null;
	}






	@Override
	public UserVO readUser(String username) {
		// TODO Auto-generated method stub
		return null;
	}




	@Override
	public UserVO update(String username) {
		// TODO Auto-generated method stub
		return null;
	}




	@Override
	public List<PostingVO> getCatCode() {
		// TODO Auto-generated method stub
		return null;
	}








}