package com.management_system.service.impl;

import com.management_system.dao.ImportOrderMapper;
import com.management_system.model.ImportOrder;
import com.management_system.service.ImportOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("importOrderService")
public class ImportOrderServiceImpl implements ImportOrderService {
    @Autowired
    private ImportOrderMapper importOrderMapper;
    @Override
    public ImportOrder getImportOrder(String id) {
        return importOrderMapper.selectByPrimaryKey(id);
    }
}
