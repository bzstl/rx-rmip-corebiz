package com.rx.rmip.corebiz.service.modules.station.techdata.dao;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTSTCobj;
@MyBatisDao
public interface RSBTSTCobjMapper {
    int deleteByPrimaryKey(String guid);

    int insert(RSBTSTCobj record);

    int insertSelective(RSBTSTCobj record);

    RSBTSTCobj selectByPrimaryKey(String guid);

    int updateByPrimaryKeySelective(RSBTSTCobj record);

    int updateByPrimaryKey(RSBTSTCobj record);
}