package com.management_system.service.impl;

import com.management_system.dao.WarehouseMapper;
import com.management_system.model.Warehouse;
import com.management_system.service.WarehouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("warehouseService")
public class WarehouseServiceImpl implements WarehouseService {
    @Autowired
    private WarehouseMapper warehouseMapper;
    @Override
    public Warehouse getImportOrder(int id) {
        return warehouseMapper.selectByPrimaryKey(id);
    }
}
