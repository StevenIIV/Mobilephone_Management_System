package com.management_system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
    public String warehouseManagement(){
        return "warehouseManagement";
    }
    @RequestMapping(value = "/importOrder")
    public String importOrder(){
        return "importOrder";
    }
}
