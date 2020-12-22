package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.HuidaMapper;
import com.spring.entity.Huida;
import com.spring.service.HuidaService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("HuidaService")
public class HuidaServiceImpl extends ServiceBase<Huida> implements HuidaService {
    @Resource
    private HuidaMapper dao;

    @Override
    protected HuidaMapper getDao() {
        return dao;
    }
}
