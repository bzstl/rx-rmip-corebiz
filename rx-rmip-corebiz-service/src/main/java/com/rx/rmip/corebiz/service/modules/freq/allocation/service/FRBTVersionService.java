package com.rx.rmip.corebiz.service.modules.freq.allocation.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rx.rmip.corebiz.service.modules.freq.allocation.dao.FRBTVersionMapper;
import com.rx.rmip.corebiz.service.modules.freq.allocation.model.FRBTVersion;



@Service
public class FRBTVersionService {
	
	@Autowired
	private FRBTVersionMapper fMapper;
	
	public FRBTVersion find(){
		
		FRBTVersion version = fMapper.selectByPrimaryKey("20140201");
		
		return version;
	}
}
