package com.rx.rmip.corebiz.service.modules.station.techdata.dao;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTESe;
@MyBatisDao
public interface RSBTESeMapper {
    int deleteByPrimaryKey(String guid);

    int insert(RSBTESe record);

    int insertSelective(RSBTESe record);

    RSBTESe selectByPrimaryKey(String guid);

    int updateByPrimaryKeySelective(RSBTESe record);

    int updateByPrimaryKey(RSBTESe record);
}