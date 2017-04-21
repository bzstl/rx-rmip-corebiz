package com.rx.rmip.corebiz.service.modules.station.techdata.dao;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTLink;
@MyBatisDao
public interface RSBTLinkMapper {
    int deleteByPrimaryKey(String guid);

    int insert(RSBTLink record);

    int insertSelective(RSBTLink record);

    RSBTLink selectByPrimaryKey(String guid);

    int updateByPrimaryKeySelective(RSBTLink record);

    int updateByPrimaryKey(RSBTLink record);
}