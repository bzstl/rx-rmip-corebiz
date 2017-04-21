package com.rx.rmip.corebiz.service.modules.station.techdata.dao;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTEquT;
@MyBatisDao
public interface RSBTEquTMapper {
    int deleteByPrimaryKey(String guid);

    int insert(RSBTEquT record);

    int insertSelective(RSBTEquT record);

    RSBTEquT selectByPrimaryKey(String guid);

    int updateByPrimaryKeySelective(RSBTEquT record);

    int updateByPrimaryKey(RSBTEquT record);
}