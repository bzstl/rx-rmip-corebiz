package com.rx.rmip.corebiz.service.modules.station.settingapply.dao;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.station.settingapply.model.RSBTAppfilelist;

@MyBatisDao
public interface RSBTAppfilelistMapper {
    int deleteByPrimaryKey(String guid);

    int insert(RSBTAppfilelist record);

    int insertSelective(RSBTAppfilelist record);

    RSBTAppfilelist selectByPrimaryKey(String guid);

    int updateByPrimaryKeySelective(RSBTAppfilelist record);

    int updateByPrimaryKey(RSBTAppfilelist record);
}