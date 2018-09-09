package com.management_system.service;

import com.management_system.model.Warehouse;

import java.util.List;

public interface WarehouseService {
    public Warehouse getWarehouseService(int id);
    public List<Warehouse> getAllWarehouse();
}
