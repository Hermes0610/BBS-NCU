package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.XuqiuMapper;
import com.spring.entity.Xuqiu;
import com.spring.service.XuqiuService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("XuqiuService")
public class XuqiuServiceImpl extends ServiceBase<Xuqiu> implements XuqiuService {
    @Resource
    private XuqiuMapper dao;

    @Override
    protected XuqiuMapper getDao() {
        return dao;
    }
}
