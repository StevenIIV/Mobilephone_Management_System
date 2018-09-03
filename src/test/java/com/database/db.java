package com.database;

import com.management_system.dao.UserMapper;
import com.management_system.service.*;
import com.management_system.service.impl.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.apache.log4j.Logger;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class db {
    private static Logger logger = Logger.getLogger(db.class);
    @Autowired
    private UserService userService;
    @Autowired
    private GoodsinfService goodsinfService;
    @Test
    public void testSelectUser() throws Exception {
        System.out.println(userService.getUser(1).getUsername());
    }
    @Test
    public void test2(){
        System.out.println(goodsinfService.getGoodsinf("5500001").getGoodsName());
    }
}
