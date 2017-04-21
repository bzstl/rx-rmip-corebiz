package com.rx.rmip.corebiz.service.modules.station.common.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rx.rmip.corebiz.service.modules.station.common.dao.RSBTCodeDicMapper;
import com.rx.rmip.corebiz.service.modules.station.common.model.RSBTCodeDic;
import com.rx.rmip.corebiz.service.modules.station.common.service.RSBTCodeDicService;

@Service
public class RSBTCodeDicServiceImpl implements RSBTCodeDicService {

	@Autowired
	RSBTCodeDicMapper codeDicMapper;

	@Override
	public List<RSBTCodeDic> getOrgSysCode() {
		// TODO Auto-generated method stub

		return codeDicMapper.selectByCodeDataType("00092006");

	}

	@Override
	public List<RSBTCodeDic> getCodeByDataType(String codeDataType) {
		// TODO Auto-generated method stub
		return codeDicMapper.selectByCodeDataType(codeDataType);
	}

}
