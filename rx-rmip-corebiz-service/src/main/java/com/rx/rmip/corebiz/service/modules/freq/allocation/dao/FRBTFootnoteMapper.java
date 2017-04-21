package com.rx.rmip.corebiz.service.modules.freq.allocation.dao;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.freq.allocation.model.FRBTFootnote;


@MyBatisDao
public interface FRBTFootnoteMapper {
    int deleteByPrimaryKey(String fnCode);

    int insert(FRBTFootnote record);

    int insertSelective(FRBTFootnote record);

    FRBTFootnote selectByPrimaryKey(String fnCode);

    int updateByPrimaryKeySelective(FRBTFootnote record);

    int updateByPrimaryKey(FRBTFootnote record);
}