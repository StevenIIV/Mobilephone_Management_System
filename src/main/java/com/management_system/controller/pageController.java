package com.management_system.controller;

import com.management_system.model.GoodsInf;
import com.management_system.model.Warehouse;
import com.management_system.service.GoodsinfService;
import com.management_system.service.WarehouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class pageController {
    @Autowired
    private WarehouseService warehouseService;
    @Autowired
    private GoodsinfService goodsinfService;
    @RequestMapping(value = "/index")
    public String index(){
        return "index";
    }
    @RequestMapping(value = "/importManagement")
    public String importManagement(){
        return "importManagement";
    }
    @RequestMapping(value = "/salesManagement")
    public String salesManagement(){
        return "salesManagement";
    }
    @RequestMapping(value = "/warehouseManagement")
    public String warehouseManagement(HttpSession httpSession){
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
        httpSession.setAttribute("warehouselist",warehouselist);
        return "warehouseManagement";
    }
    @RequestMapping(value = "/importOrder")
    public String importOrder(){
        return "importOrder";
    }
    @RequestMapping(value = "/importOrderQuery")
    public String importOrderQuery(){
        return "importOrderQuery";
    }
    @RequestMapping(value = "/salesOrder")
    public String salesOrder(){
        return "salesOrder";
    }
    @RequestMapping(value = "/salesOrderQuery")
    public String salesOrderQuery(){
        return "salesOrderQuery";
    }
    @RequestMapping(value = "/warehouse")
    public String warehouse(){
        return "warehouse";
    }
}
