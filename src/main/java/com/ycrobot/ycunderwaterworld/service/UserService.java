package com.ycrobot.ycunderwaterworld.service;

import com.ycrobot.ycunderwaterworld.pojo.User;

public interface UserService {
	User getUserByEmail(String email);
	Long insertUser(User user);
	User getUser(User user);
}
