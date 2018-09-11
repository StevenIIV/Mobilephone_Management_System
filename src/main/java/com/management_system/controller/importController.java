package com.management_system.controller;

import com.management_system.model.ImportOrder;
import com.management_system.model.Warehouse;
import com.management_system.service.ImportOrderService;
import com.management_system.service.OtherServices;
import com.management_system.service.WarehouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;

@Controller
public class importController {
    @Resource
    private ImportOrderService importOrderService;
    @Resource
    private WarehouseService warehouseService;
    @Resource
    private OtherServices otherServices;

    @RequestMapping(value = "/import.do",method = RequestMethod.POST)
    public String importOrder(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String id=request.getParameter("id");
        String manufacturer=request.getParameter("manufacturer");
        String ck=request.getParameter("ck");
        String unit=request.getParameter("unit");
        String color=request.getParameter("color");
        String goods_type=request.getParameter("goods_type");
        String price=request.getParameter("price");
        String num=request.getParameter("num");
        String totprice=request.getParameter("totprice");
        String yfje=request.getParameter("yfje");
        String sfje=request.getParameter("sfje");
        String yhje=request.getParameter("yhje");
        ImportOrder importOrder=new ImportOrder(id,otherServices.getManufacturerId(manufacturer),otherServices.getCkId(ck),Integer.valueOf(yfje),Integer.valueOf(sfje),"13","admin",Integer.valueOf(yhje),num);
        importOrderService.insert(importOrder);
        return "redirect:importManagement";
    }
}
