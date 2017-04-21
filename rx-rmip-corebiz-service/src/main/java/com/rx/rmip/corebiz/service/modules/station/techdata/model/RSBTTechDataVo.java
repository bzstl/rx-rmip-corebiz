package com.rx.rmip.corebiz.service.modules.station.techdata.model;

import java.util.List;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.station.settingapply.model.RSBTNet;

@MyBatisDao
public class RSBTTechDataVo {
	private List<RSBTAntFeed> antList;
	private List<RSBTAntFeed> feedList;
	private List<RSBTAntFeedT> antTList;
	private List<RSBTAntFeedT> feedTList;
	private RSBTEaf eaf;
	private	List<RSBTEqu> equList;
	private List<RSBTEquT> equTList;
	private RSBTESe eSe;
	private RSBTFreq freq;
	private RSBTFreqT freqT;
	private RSBTLink link1;
	private RSBTLink link2;
	private RSBTStation station;
	private RSBTStationT stationT;
	private RSBTNet net;
	private RSBTSTCobj stCobj;
}
