package com.rx.rmip.corebiz.service.modules.station.common.service;

import java.util.List;

import com.rx.rmip.corebiz.service.modules.station.common.model.RSBTCodeDic;

public interface RSBTCodeDicService {
	public List<RSBTCodeDic> getOrgSysCode();
	public List<RSBTCodeDic> getCodeByDataType(String codeDataType);
}
