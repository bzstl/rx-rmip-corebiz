package com.rx.rmip.corebiz.service.modules.station.techdata.dao;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTFreqT;
@MyBatisDao
public interface RSBTFreqTMapper {
    int deleteByPrimaryKey(String guid);

    int insert(RSBTFreqT record);

    int insertSelective(RSBTFreqT record);

    RSBTFreqT selectByPrimaryKey(String guid);

    int updateByPrimaryKeySelective(RSBTFreqT record);

    int updateByPrimaryKey(RSBTFreqT record);
}