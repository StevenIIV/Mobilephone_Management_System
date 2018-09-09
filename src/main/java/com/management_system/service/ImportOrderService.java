package com.management_system.service;

import com.management_system.model.ImportOrder;

import java.security.PublicKey;
import java.util.List;

public interface ImportOrderService {
    public ImportOrder getImportOrder(String id);
    public int insert(ImportOrder order);
    public List<ImportOrder> getAllImportOrder();
}
