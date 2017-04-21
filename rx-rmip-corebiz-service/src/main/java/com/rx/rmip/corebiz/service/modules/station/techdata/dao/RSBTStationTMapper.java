package com.rx.rmip.corebiz.service.modules.station.techdata.dao;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTStationT;
@MyBatisDao
public interface RSBTStationTMapper {
    int deleteByPrimaryKey(String guid);

    int insert(RSBTStationT record);

    int insertSelective(RSBTStationT record);

    RSBTStationT selectByPrimaryKey(String guid);

    int updateByPrimaryKeySelective(RSBTStationT record);

    int updateByPrimaryKey(RSBTStationT record);
}