package com.rx.rmip.corebiz.service.modules.station.techdata.dao;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTFreq;
@MyBatisDao
public interface RSBTFreqMapper {
    int deleteByPrimaryKey(String guid);

    int insert(RSBTFreq record);

    int insertSelective(RSBTFreq record);

    RSBTFreq selectByPrimaryKey(String guid);

    int updateByPrimaryKeySelective(RSBTFreq record);

    int updateByPrimaryKey(RSBTFreq record);
}