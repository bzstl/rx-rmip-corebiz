package com.rx.rmip.corebiz.service.modules.station.techdata.dao;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTStation;
@MyBatisDao
public interface RSBTStationMapper {
    int deleteByPrimaryKey(String guid);

    int insert(RSBTStation record);

    int insertSelective(RSBTStation record);

    RSBTStation selectByPrimaryKey(String guid);

    int updateByPrimaryKeySelective(RSBTStation record);

    int updateByPrimaryKey(RSBTStation record);
}