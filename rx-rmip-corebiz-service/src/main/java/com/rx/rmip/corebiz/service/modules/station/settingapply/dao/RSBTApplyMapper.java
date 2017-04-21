package com.rx.rmip.corebiz.service.modules.station.settingapply.dao;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.station.settingapply.model.RSBTApply;

@MyBatisDao
public interface RSBTApplyMapper {
    int deleteByPrimaryKey(String guid);

    int insert(RSBTApply record);

    int insertSelective(RSBTApply record);

    RSBTApply selectByPrimaryKey(String guid);

    int updateByPrimaryKeySelective(RSBTApply record);

    int updateByPrimaryKey(RSBTApply record);
}