package com.management_system.service.impl;

import com.management_system.dao.UserMapper;
import com.management_system.model.User;
import com.management_system.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("userService")
public class UserServiceImpl implements UserService{
    @Autowired
    private UserMapper userMapper;
    @Override
    public User getUser(int id) {
        return userMapper.selectByPrimaryKey(id);
    }

    @Override
    public int checkUser(String username, String password) {
        Map map=new HashMap();
        map.put("username",username);
        map.put("password",password);
        User user=userMapper.selectByUsernamePassword(map);
        if(user!=null){
            return user.getId();
        }
        else{
            return -1;
        }
    }

}
