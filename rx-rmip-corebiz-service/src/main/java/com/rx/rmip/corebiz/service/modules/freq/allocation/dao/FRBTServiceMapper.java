package com.rx.rmip.corebiz.service.modules.freq.allocation.dao;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.freq.allocation.model.FRBTService;

@MyBatisDao
public interface FRBTServiceMapper {
    int deleteByPrimaryKey(String servCode);

    int insert(FRBTService record);

    int insertSelective(FRBTService record);

    FRBTService selectByPrimaryKey(String servCode);

    int updateByPrimaryKeySelective(FRBTService record);

    int updateByPrimaryKey(FRBTService record);
}