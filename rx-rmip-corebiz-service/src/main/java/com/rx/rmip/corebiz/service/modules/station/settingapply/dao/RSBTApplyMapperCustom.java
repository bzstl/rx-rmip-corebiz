package com.rx.rmip.corebiz.service.modules.station.settingapply.dao;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.station.settingapply.model.RSBTApplyVo;

/**
 * 台站申请的DAO
 * @author owner
 *
 */
@MyBatisDao
public interface RSBTApplyMapperCustom {
	//更新 RSBTApply、RSBTOrg 、 RSBTNet、 RSBTAppfreq RSBTAppfilelist
	public void updateRSBTApply(RSBTApplyVo applyVo);
}
