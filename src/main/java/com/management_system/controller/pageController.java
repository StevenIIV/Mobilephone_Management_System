package com.management_system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class pageController {
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
