package com.management_system.service;

import com.management_system.model.Agent;
import com.management_system.model.Ck;
import com.management_system.model.Customer;
import com.management_system.model.Manufacturer;

public interface OtherServices {
    public Ck getCk(int id);
    public Agent getAgent(int id);
    public Customer getCustomer(int id);
    public Manufacturer getManufacturer(int id);
}
