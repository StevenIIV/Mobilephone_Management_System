package com.management_system.service;

import com.management_system.model.SalesOrder;

public interface SalesOrderService {
    public SalesOrder getImportOrder(String id);
    public int insert(SalesOrder order);
}
