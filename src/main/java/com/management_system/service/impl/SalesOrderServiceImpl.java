package com.management_system.service.impl;

import com.management_system.dao.SalesOrderMapper;
import com.management_system.model.SalesOrder;
import com.management_system.service.SalesOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("salesOrderService")
public class SalesOrderServiceImpl implements SalesOrderService {
    @Autowired
    private SalesOrderMapper salesOrderMapper;
    @Override
    public SalesOrder getSalesOrder(String id) {
        return salesOrderMapper.selectByPrimaryKey(id);
    }

    @Override
    public int insert(SalesOrder order) {
        return salesOrderMapper.insert(order);
    }

    @Override
    public List<SalesOrder> getAllSalesOrder() {
        return salesOrderMapper.selectAll();
    }
}
