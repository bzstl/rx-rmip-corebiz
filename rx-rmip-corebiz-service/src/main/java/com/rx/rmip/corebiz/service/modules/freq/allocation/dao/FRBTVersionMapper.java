package com.rx.rmip.corebiz.service.modules.freq.allocation.dao;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.freq.allocation.model.FRBTVersion;


@MyBatisDao
public interface FRBTVersionMapper {
    int deleteByPrimaryKey(String verCode);

    int insert(FRBTVersion record);

    int insertSelective(FRBTVersion record);

    FRBTVersion selectByPrimaryKey(String verCode);

    int updateByPrimaryKeySelective(FRBTVersion record);

    int updateByPrimaryKey(FRBTVersion record);
}