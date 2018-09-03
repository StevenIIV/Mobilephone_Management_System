package com.management_system.service.impl;

import com.management_system.dao.AgentMapper;
import com.management_system.dao.CkMapper;
import com.management_system.dao.CustomerMapper;
import com.management_system.dao.ManufacturerMapper;
import com.management_system.model.Agent;
import com.management_system.model.Ck;
import com.management_system.model.Customer;
import com.management_system.model.Manufacturer;
import com.management_system.service.OtherServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("otherService")
public class OtherServicesImpl implements OtherServices {
    @Autowired
    private CkMapper ckMapper;
    @Autowired
    private AgentMapper agentMapper;
    @Autowired
    private CustomerMapper customerMapper;
    @Autowired
    private ManufacturerMapper manufacturerMapper;
    @Override
    public Ck getCk(int id) {
        return ckMapper.selectByPrimaryKey(id);
    }

    @Override
    public Agent getAgent(int id) {
        return agentMapper.selectByPrimaryKey(id);
    }

    @Override
    public Customer getCustomer(int id) {
        return customerMapper.selectByPrimaryKey(id);
    }

    @Override
    public Manufacturer getManufacturer(int id) {
        return manufacturerMapper.selectByPrimaryKey(id);
    }
}
