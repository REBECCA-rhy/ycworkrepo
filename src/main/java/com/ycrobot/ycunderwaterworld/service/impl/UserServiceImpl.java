package com.ycrobot.ycunderwaterworld.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ycrobot.ycunderwaterworld.mapper.UserMapper;
import com.ycrobot.ycunderwaterworld.pojo.User;
import com.ycrobot.ycunderwaterworld.service.UserService;


@Service("userService")
public class UserServiceImpl implements UserService{

	private UserMapper userMapper;
	
	@Resource(name="userMapper")
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}


	public User getUserByEmail(String email) {
		return userMapper.getUserByEmail(email);
	}


	public Long insertUser(User user) {
		return userMapper.insertUser(user);
	}



	public User getUser(User user) {
		return userMapper.getUser(user);
	}
	

}
