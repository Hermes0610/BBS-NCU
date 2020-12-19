package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.LanmuMapper;
import com.spring.entity.Lanmu;
import com.spring.service.LanmuService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("LanmuService")
public class LanmuServiceImpl extends ServiceBase<Lanmu> implements LanmuService {
    @Resource
    private LanmuMapper dao;

    @Override
    protected LanmuMapper getDao() {
        return dao;
    }
}
