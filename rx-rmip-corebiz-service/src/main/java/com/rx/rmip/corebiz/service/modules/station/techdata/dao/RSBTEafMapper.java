package com.rx.rmip.corebiz.service.modules.station.techdata.dao;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTEaf;
@MyBatisDao
public interface RSBTEafMapper {
    int deleteByPrimaryKey(String guid);

    int insert(RSBTEaf record);

    int insertSelective(RSBTEaf record);

    RSBTEaf selectByPrimaryKey(String guid);

    int updateByPrimaryKeySelective(RSBTEaf record);

    int updateByPrimaryKey(RSBTEaf record);
}