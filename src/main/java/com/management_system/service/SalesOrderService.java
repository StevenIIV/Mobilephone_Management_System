package com.management_system.service;

import com.management_system.model.SalesOrder;

import java.util.List;

public interface SalesOrderService {
    public SalesOrder getSalesOrder(String id);
    public int insert(SalesOrder order);
    public List<SalesOrder> getAllSalesOrder();
}
