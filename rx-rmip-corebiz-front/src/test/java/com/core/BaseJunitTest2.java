package com.core;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.rx.rmip.corebiz.service.modules.station.techdata.dao.RSBTStationMapper;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTStation;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath*:/spring-context.xml","classpath*:/spring-mvc.xml"})
public class BaseJunitTest2 {

	@Autowired
	private  RSBTStationMapper stationMapper;


	@Test
	public void test(){
		RSBTStation station = new RSBTStation();
		station.setAppCode("1");
		station.setMemo("1");
		station.setNetGuid("516c5dcc-b908-4937-ac07-75f3f67e4fd5");
		station.setOrgCode("1");
		station.setStatAddr("1");
		station.setStatAppType("1");
		station.setStatAreaCode("1");
		BigDecimal a = new BigDecimal(1);
		station.setStatAt(a);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
		station.setStatDateStart(new Date());
		station.setStatEquSum(1);
		station.setStatLa(a);
		station.setStatLg(a);
		station.setStatName("1");
		station.setStatStatus("1");
		station.setStatTdi("1");
		station.setStatType("1");
		station.setStatWork("1");

		stationMapper.insert(station);
		System.out.println();
	}
}
