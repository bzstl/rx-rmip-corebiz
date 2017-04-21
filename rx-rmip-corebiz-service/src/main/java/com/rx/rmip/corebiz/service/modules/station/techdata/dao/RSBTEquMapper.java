package com.rx.rmip.corebiz.service.modules.station.techdata.dao;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTEqu;
@MyBatisDao
public interface RSBTEquMapper {
    int deleteByPrimaryKey(String guid);

    int insert(RSBTEqu record);

    int insertSelective(RSBTEqu record);

    RSBTEqu selectByPrimaryKey(String guid);

    int updateByPrimaryKeySelective(RSBTEqu record);

    int updateByPrimaryKey(RSBTEqu record);
}