package com.rx.rmip.corebiz.service.modules.station.settingapply.dao;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.station.settingapply.model.RSBTOrg;

@MyBatisDao
public interface RSBTOrgMapper {
    int deleteByPrimaryKey(String guid);

    int insert(RSBTOrg record);

    int insertSelective(RSBTOrg record);

    RSBTOrg selectByPrimaryKey(String guid);

    int updateByPrimaryKeySelective(RSBTOrg record);

    int updateByPrimaryKey(RSBTOrg record);
}