package com.rx.rmip.corebiz.service.modules.station.settingapply.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rx.rmip.corebiz.service.modules.station.settingapply.dao.RSBTAppfilelistMapper;
import com.rx.rmip.corebiz.service.modules.station.settingapply.model.RSBTAppfilelist;
import com.rx.rmip.corebiz.service.modules.station.settingapply.service.RSBTAppfilelistService;

@Service
public class RSBTAppfilelistServiceImpl implements RSBTAppfilelistService {

	@Autowired
	private RSBTAppfilelistMapper mapper;

	private String guid = "5aaffa5f-df59-438c-ab1f-1382b4e02152";

	@Override
	public RSBTAppfilelist test() {
		RSBTAppfilelist filelist = mapper.selectByPrimaryKey(guid);

		return filelist;
	}
}
