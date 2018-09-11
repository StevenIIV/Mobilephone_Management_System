package com.database;

import com.management_system.dao.UserMapper;
import com.management_system.model.GoodsInf;
import com.management_system.model.ImportOrder;
import com.management_system.model.SalesOrder;
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
import java.util.Date;
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
    @Autowired SalesOrderService salesOrderService;
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
        List<SalesOrder> list=salesOrderService.getAllSalesOrder();
        List<List<Object>> salesorderlist=new ArrayList<>();
        for(int i=0;i<list.size();i++){
            SalesOrder salesOrder=list.get(i);
            List<Object> l=new ArrayList<>();
            l.add(otherServices.getCustomer(salesOrder.getCustomer()).getCustomer());
            l.add(salesOrder.getDate());
            l.add("手机");
            l.add(salesOrder.getId());
            l.add("进货支付");
            l.add(salesOrder.getYfje());
            l.add(salesOrder.getSfje());
            l.add(salesOrder.getYfje());
            l.add(otherServices.getAgent(Integer.valueOf(salesOrder.getAgent())).getYgmc());
            l.add(salesOrder.getCzy());
            salesorderlist.add(l);
        }
    }
    @Test
    public void test4(){
        System.out.println(new Date());
    }
}
