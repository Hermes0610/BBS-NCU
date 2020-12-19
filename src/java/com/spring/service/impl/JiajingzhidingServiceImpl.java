package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.JiajingzhidingMapper;
import com.spring.entity.Jiajingzhiding;
import com.spring.service.JiajingzhidingService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("JiajingzhidingService")
public class JiajingzhidingServiceImpl extends ServiceBase<Jiajingzhiding> implements JiajingzhidingService {
    @Resource
    private JiajingzhidingMapper dao;

    @Override
    protected JiajingzhidingMapper getDao() {
        return dao;
    }
}
