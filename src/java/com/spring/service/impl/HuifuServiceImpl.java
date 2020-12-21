package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.HuifuMapper;
import com.spring.entity.Huifu;
import com.spring.service.HuifuService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("HuifuService")
public class HuifuServiceImpl extends ServiceBase<Huifu> implements HuifuService {
    @Resource
    private HuifuMapper dao;

    @Override
    protected HuifuMapper getDao() {
        return dao;
    }
}
