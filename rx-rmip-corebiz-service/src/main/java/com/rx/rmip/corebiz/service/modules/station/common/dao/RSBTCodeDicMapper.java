package com.rx.rmip.corebiz.service.modules.station.common.dao;

import java.math.BigDecimal;
import java.util.List;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.station.common.model.RSBTCodeDic;
@MyBatisDao
public interface RSBTCodeDicMapper {
    int deleteByPrimaryKey(BigDecimal co);

    int insert(RSBTCodeDic record);

    int insertSelective(RSBTCodeDic record);

    RSBTCodeDic selectByPrimaryKey(BigDecimal co);

    int updateByPrimaryKeySelective(RSBTCodeDic record);

    int updateByPrimaryKey(RSBTCodeDic record);

    List<RSBTCodeDic> selectByCodeDataType(String codeDataType);//通过类型编码查询

}