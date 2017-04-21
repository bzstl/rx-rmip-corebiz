package com.rx.rmip.corebiz.service.modules.station.settingapply.dao;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.station.settingapply.model.RSBTNet;

@MyBatisDao
public interface RSBTNetMapper {
    int deleteByPrimaryKey(String guid);

    int insert(RSBTNet record);

    int insertSelective(RSBTNet record);

    RSBTNet selectByPrimaryKey(String guid);

    int updateByPrimaryKeySelective(RSBTNet record);

    int updateByPrimaryKey(RSBTNet record);
}