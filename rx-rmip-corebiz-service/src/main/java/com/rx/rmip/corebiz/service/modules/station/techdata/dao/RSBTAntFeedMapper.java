package com.rx.rmip.corebiz.service.modules.station.techdata.dao;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTAntFeed;
@MyBatisDao
public interface RSBTAntFeedMapper {
    int deleteByPrimaryKey(String guid);

    int insert(RSBTAntFeed record);

    int insertSelective(RSBTAntFeed record);

    RSBTAntFeed selectByPrimaryKey(String guid);

    int updateByPrimaryKeySelective(RSBTAntFeed record);

    int updateByPrimaryKey(RSBTAntFeed record);
}