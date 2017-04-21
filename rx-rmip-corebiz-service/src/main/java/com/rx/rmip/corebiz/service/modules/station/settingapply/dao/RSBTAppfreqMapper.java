package com.rx.rmip.corebiz.service.modules.station.settingapply.dao;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.station.settingapply.model.RSBTAppfreq;

@MyBatisDao
public interface RSBTAppfreqMapper {
    int deleteByPrimaryKey(String guid);

    int insert(RSBTAppfreq record);

    int insertSelective(RSBTAppfreq record);

    RSBTAppfreq selectByPrimaryKey(String guid);

    int updateByPrimaryKeySelective(RSBTAppfreq record);

    int updateByPrimaryKey(RSBTAppfreq record);

  //  int batchInsert(List<RSBTAppfreq> records);//批量插入
}