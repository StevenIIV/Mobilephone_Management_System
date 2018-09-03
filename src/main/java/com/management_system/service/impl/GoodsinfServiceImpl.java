package com.management_system.service.impl;

import com.management_system.dao.GoodsInfMapper;
import com.management_system.model.GoodsInf;
import com.management_system.service.GoodsinfService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("goodsinfService")
public class GoodsinfServiceImpl implements GoodsinfService {
    @Autowired
    private GoodsInfMapper goodsInfMapper;
    @Override
    public GoodsInf getGoodsinf(String goodsid) {
        return goodsInfMapper.selectByPrimaryKey(goodsid);
    }
}
