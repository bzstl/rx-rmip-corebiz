package com.rx.rmip.corebiz.service.modules.station.techdata.dao;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTAntFeedT;
@MyBatisDao
public interface RSBTAntFeedTMapper {
    int deleteByPrimaryKey(String guid);

    int insert(RSBTAntFeedT record);

    int insertSelective(RSBTAntFeedT record);

    RSBTAntFeedT selectByPrimaryKey(String guid);

    int updateByPrimaryKeySelective(RSBTAntFeedT record);

    int updateByPrimaryKey(RSBTAntFeedT record);
}