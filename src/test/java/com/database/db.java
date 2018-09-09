package com.database;

import com.management_system.dao.UserMapper;
import com.management_system.model.GoodsInf;
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
        List<Warehouse> list=warehouseService.getAllWarehouse();
        List<List<Object>> warehouselist=new ArrayList<>();
        for(int i=0;i<list.size();i++){
            Warehouse warehouse=list.get(i);
            String good_id=warehouse.getGoodsId();
            GoodsInf goodsInf=goodsinfService.getGoodsinf(good_id);
            List<Object> l=new ArrayList<>();
            l.add(good_id);
            l.add(goodsInf.getGoodsName());
            l.add(warehouse.getNum());
            l.add(warehouse.getXssl());
            l.add(goodsInf.getPreInPrice());
            l.add(goodsInf.getPreInPrice());
            l.add(goodsInf.getPreInPrice());
            l.add(goodsInf.getUnit());
            l.add(goodsInf.getType());
            l.add(goodsInf.getColor());
            l.add(goodsInf.getManufacturer());
            warehouselist.add(l);
        }
    }
}
