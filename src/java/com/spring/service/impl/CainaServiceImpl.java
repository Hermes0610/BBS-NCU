package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.CainaMapper;
import com.spring.entity.Caina;
import com.spring.service.CainaService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("CainaService")
public class CainaServiceImpl extends ServiceBase<Caina> implements CainaService {
    @Resource
    private CainaMapper dao;

    @Override
    protected CainaMapper getDao() {
        return dao;
    }
}
