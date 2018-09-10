package com.database;

import com.management_system.dao.UserMapper;
import com.management_system.model.GoodsInf;
import com.management_system.model.ImportOrder;
import com.management_system.model.Warehouse;
import com.management_system.service.*;
import com.management_system.service.impl.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.apache.log4j.Logger;

import java.util.ArrayList;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class db {
    private static Logger logger = Logger.getLogger(db.class);
    @Autowired
    private UserService userService;
    @Autowired
    private GoodsinfService goodsinfService;
    @Autowired
    private WarehouseService warehouseService;
    @Autowired
    private ImportOrderService importOrderService;
    @Autowired
    private OtherServices otherServices;
    @Test
    public void testSelectUser() throws Exception {
        System.out.println(userService.getUser(1).getUsername());
    }
    @Test
    public void test2(){
        System.out.println(goodsinfService.getGoodsinf("5500001").getGoodsName());
    }
    @Test
    public void test3(){
        List<ImportOrder> list=importOrderService.getAllImportOrder();
        List<List<Object>> importorderlist=new ArrayList<>();
        for(int i=0;i<list.size();i++){
            ImportOrder importOrder=list.get(i);
            List<Object> l=new ArrayList<>();
            l.add(otherServices.getManufacturer(importOrder.getManufacturer()).getGhsmc());
            l.add(importOrder.getDate());
            l.add("手机");
            l.add(importOrder.getId());
            l.add("进货支付");
            l.add(importOrder.getYfje());
            l.add(importOrder.getSfje());
            l.add(importOrder.getYfje());
            l.add(otherServices.getAgent(Integer.valueOf(importOrder.getAgent())).getYgmc());
            l.add(importOrder.getCzy());
            importorderlist.add(l);
        }
    }
    @Test
    public void test4(){
        System.out.println(otherServices.getAgent(13).getYgmc());
    }
}
