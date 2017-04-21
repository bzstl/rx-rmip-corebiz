package com.rx.rmip.corebiz.service.modules.freq.allocation.dao;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.freq.allocation.model.FRBTAllocationService;


@MyBatisDao
public interface FRBTAllocationServiceMapper {
    int deleteByPrimaryKey(String guid);

    int insert(FRBTAllocationService record);

    int insertSelective(FRBTAllocationService record);

    FRBTAllocationService selectByPrimaryKey(String guid);

    int updateByPrimaryKeySelective(FRBTAllocationService record);

    int updateByPrimaryKey(FRBTAllocationService record);
}