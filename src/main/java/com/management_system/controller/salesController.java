package com.management_system.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.management_system.model.ImportOrder;
import com.management_system.model.SalesOrder;
import com.management_system.service.OtherServices;
import com.management_system.service.SalesOrderService;
import com.management_system.service.WarehouseService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;

@Controller
public class salesController {
    @Resource
    private SalesOrderService salesOrderService;
    @Resource
    private OtherServices otherServices;
    @Resource
    private WarehouseService warehouseService;

    @RequestMapping(value = "/sales.do",method = RequestMethod.POST)
    public String salesOrder(HttpServletResponse response, HttpServletRequest request) throws UnsupportedEncodingException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String id=request.getParameter("id");
        String customer=request.getParameter("customer");
        String ck=request.getParameter("ck");
        String unit=request.getParameter("unit");
        String color=request.getParameter("color");
        String goods_type=request.getParameter("goods_type");
        String price=request.getParameter("price");
        String num=request.getParameter("num");
        String discount=request.getParameter("discount");
        String discount_price=request.getParameter("discount_price");
        String totprice=request.getParameter("totprice");
        String yfje=request.getParameter("yfje");
        String sfje=request.getParameter("sfje");
        String yhje=request.getParameter("yhje");
        SalesOrder salesOrder=new SalesOrder(id,otherServices.getCustomerId(customer),otherServices.getCkId(ck),yfje,sfje,"13","admin",yhje);
        salesOrderService.insert(salesOrder);
        return "redirect:salesManagement";
    }
}
