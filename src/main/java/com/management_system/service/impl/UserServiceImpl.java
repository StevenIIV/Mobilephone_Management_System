package com.management_system.service.impl;

import com.management_system.dao.UserMapper;
import com.management_system.model.User;
import com.management_system.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService{
    @Autowired
    private UserMapper userMapper;
    @Override
    public User getUser(int id) {
        return userMapper.selectByPrimaryKey(id);
    }
}
