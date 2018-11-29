package com.ycrobot.ycunderwaterworld.mapper;

import org.springframework.stereotype.Repository;

import com.ycrobot.ycunderwaterworld.pojo.User;

@Repository("userMapper")
public interface UserMapper {
    User getUserByEmail(String email);
    Long insertUser(User user);
    User getUser(User user);
}
