package com.rx.rmip.corebiz.service.modules.station.techdata.service.impl;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rx.rmip.corebiz.service.modules.station.settingapply.model.RSBTNet;
import com.rx.rmip.corebiz.service.modules.station.techdata.dao.RSBTAntFeedMapper;
import com.rx.rmip.corebiz.service.modules.station.techdata.dao.RSBTAntFeedTMapper;
import com.rx.rmip.corebiz.service.modules.station.techdata.dao.RSBTESeMapper;
import com.rx.rmip.corebiz.service.modules.station.techdata.dao.RSBTEafMapper;
import com.rx.rmip.corebiz.service.modules.station.techdata.dao.RSBTEquMapper;
import com.rx.rmip.corebiz.service.modules.station.techdata.dao.RSBTEquTMapper;
import com.rx.rmip.corebiz.service.modules.station.techdata.dao.RSBTFreqMapper;
import com.rx.rmip.corebiz.service.modules.station.techdata.dao.RSBTFreqTMapper;
import com.rx.rmip.corebiz.service.modules.station.techdata.dao.RSBTLinkMapper;
import com.rx.rmip.corebiz.service.modules.station.techdata.dao.RSBTSTCobjMapper;
import com.rx.rmip.corebiz.service.modules.station.techdata.dao.RSBTStationMapper;
import com.rx.rmip.corebiz.service.modules.station.techdata.dao.RSBTStationTMapper;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTAntFeed;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTAntFeedT;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTEqu;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTEquT;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTFreq;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTFreqT;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTSTCobj;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTStation;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTStationCustom;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTStationT;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTStationVo;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.TechDataForm_Tab;
import com.rx.rmip.corebiz.service.modules.station.techdata.service.StationTechDataService;

@Service
@Transactional
public class StationTechDataServiceImpl implements StationTechDataService {
	// 注入与台站技术资料表相关的dao
	@Autowired
	private RSBTAntFeedMapper antFeedMapper;
	@Autowired
	private RSBTAntFeedTMapper antFeedTMapper;
	@Autowired
	private RSBTEafMapper eafMapper;
	@Autowired
	private RSBTEquMapper equMapper;
	@Autowired
	private RSBTEquTMapper equTMapper;
	@Autowired
	private RSBTESeMapper eSeMapper;
	@Autowired
	private RSBTFreqMapper freqMapper;
	@Autowired
	private RSBTFreqTMapper freqTMapper;
	@Autowired
	private RSBTLinkMapper linkMapper;
	@Autowired
	private RSBTStationMapper stationMapper;
	@Autowired
	private RSBTStationTMapper stationTMapper;
	@Autowired
	private RSBTSTCobjMapper sTCobjMapper;

	// 提交国无管表3的数据
	@Override
	public void insertFormH(RSBTStationVo stationVo) {
		// 接收视图层model传来的数据
		RSBTNet net = stationVo.getNet();
		RSBTStation station = stationVo.getStation();
		RSBTStationT stationT = stationVo.getStationT();
		List<RSBTEqu> equList = stationVo.getEquList();
		List<RSBTEquT> equTList = stationVo.getEquTList();
		List<RSBTFreq> freqList = stationVo.getFreqList();
		List<RSBTFreqT> freqTList = stationVo.getFreqTList();
		RSBTAntFeed ant = stationVo.getAnt();
		RSBTAntFeedT antT = stationVo.getAntT();
		RSBTAntFeed feed = stationVo.getFeed();
		RSBTAntFeedT feedT = stationVo.getFeedT();
		List<RSBTSTCobj> sTCobjList = stationVo.getsTCobjList();
		RSBTStationCustom stationCustom = stationVo.getStationCustom();

		// 处理工作时间（待完成）
		if (stationCustom.getAllday() == 1) {
			// do.......
		}

		// 处理地理坐标，把经纬度的度分秒数据统一用度来表示
		double la = stationCustom.getLa1() + (stationCustom.getLa2() / 60) + (stationCustom.getLa3() / 3600);
		BigDecimal statLa = new BigDecimal(la);
		station.setStatLa(statLa);

		double lg = stationCustom.getLg1() + (stationCustom.getLg2() / 60) + (stationCustom.getLg3() / 3600);
		BigDecimal statLg = new BigDecimal(lg);
		station.setStatLg(statLg);

		// 设置页面上没有，但是数据库表存在的必填字段
		station.setStatAppType("H");

		// 插入station表
		if (net != null) {
			station.setNetGuid(net.getGuid());
		}

		stationMapper.insert(station);

		// 插入stationT表
		stationT.setGuid(station.getGuid());
		stationTMapper.insert(stationT);

		// 提交equList到equ表
		for (RSBTEqu equ : equList) {
			if (equ.getEquModel() != null && !equ.getEquModel().equals("")) {// 当表格总的某一个设备数据行上有数据时，执行相应的操作
				equ.setStationGuid(station.getGuid());
				equMapper.insert(equ);
			}
		}

		// 提交equTList到equT表
		for (int i = 0; i < equTList.size(); i++) {
			RSBTEquT equT = equTList.get(i);
			RSBTEqu equ = equList.get(i);
			if (equ.getGuid() != null) {// 当表格总的某一个设备冗余数据行对应着一个设备数据时，执行相应的操作
				equT.setGuid(equ.getGuid());
				equTMapper.insert(equT);
			}
		}

		// 提交freqList到freq表

		for (RSBTFreq freq : freqList) {
			if (freq.getFreqEfb() != null && !freq.getFreqEfb().equals("")) {// 当表格总的某一个频率数据行上有数据时，执行相应的操作
				freq.setStationGuid(station.getGuid());
				freqMapper.insert(freq);
			}
		}

		// 提交freqTList到freqT表

		for (int i = 0; i < freqTList.size(); i++) {
			RSBTFreqT freqT = freqTList.get(i);
			RSBTFreq freq = freqList.get(i);
			if (freq.getGuid() != null) {// 当表格总的某一个频率冗余数据行对应着一个频率数据时，执行相应的操作
				freqT.setGuid(freq.getGuid());
				freqTMapper.insert(freqT);
			}
		}

		// 插入ant表
		ant.setStationGuid(station.getGuid());
		antFeedMapper.insert(ant);

		// 插入antT表
		antT.setGuid(ant.getGuid());
		antFeedTMapper.insert(antT);

		// 插入feed表
		feed.setStationGuid(station.getGuid());
		antFeedMapper.insert(feed);

		// 插入STCOBJ表（待完成）
		/*
		 * for (RSBTSTCobj sTCobj : sTCobjList) { if (sTCobj.getGuid()!=null) {
		 * sTCobj.setStationGuid(station.getGuid());
		 * sTCobjMapper.insert(sTCobj); } }
		 */

	}

	// 提交国无管表4的数据
	@Override
	public void insertFormLM(RSBTStationVo stationVo) {
		// 接收视图层model传来的数据
		RSBTNet net = stationVo.getNet();
		RSBTStation station = stationVo.getStation();
		RSBTStationT stationT = stationVo.getStationT();
		List<RSBTEqu> equList = stationVo.getEquList();
		List<RSBTEquT> equTList = stationVo.getEquTList();
		List<RSBTFreq> freqList = stationVo.getFreqList();
		List<RSBTFreqT> freqTList = stationVo.getFreqTList();
		List<RSBTAntFeed> antList = stationVo.getAntList();
		List<RSBTAntFeedT> antTList = stationVo.getAntTList();
		RSBTFreq freqCommon = stationVo.getFreq();
		RSBTAntFeedT antTCommon = stationVo.getAntT();


		// 设置页面上没有，但是数据库表存在的必填字段
		station.setStatAppType("LM");

		// 插入station表
		if (net != null) {
			station.setNetGuid(net.getGuid());
		}
		stationMapper.insert(station);
		// 插入stationT表
		stationT.setGuid(station.getGuid());
		stationTMapper.insert(stationT);

		// 提交freqList到freq表
		for (RSBTFreq freq : freqList) {
			if (freq.getFreqEfb() != null && !freq.getFreqEfb().equals(0)) {// 当表格总的某一个频率数据行上有数据时，执行相应的操作
				freq.setStationGuid(station.getGuid());
				if (freqCommon.getFreqType().equals("0")) {// 业务特点：信(波)道划分类型为频点时，收（发）频率的上、下限相等,必要收、发带宽相等
					freq.setFreqEfe(freq.getFreqEfb());
					freq.setFreqRfe(freq.getFreqRfb());
					freq.setFreqRBand(freq.getFreqEBand());
				} else {// 必要收、发带宽相等
					freq.setFreqRBand(freq.getFreqEBand());
				}
				freqMapper.insert(freq);
			}
		}

		// 提交freqTList到freqT表

		for (int i = 0; i < freqTList.size(); i++) {
			RSBTFreqT freqT = freqTList.get(i);
			RSBTFreq freq = freqList.get(i);
			if (freq.getGuid() != null) {// 当表格总的某一个频率冗余数据行对应着一个频率数据时，执行相应的操作
				freqT.setGuid(freq.getGuid());
				freqTMapper.insert(freqT);
			}
		}

		// 提交equList到equ表
		for (int i = 0; i < equList.size(); i++) {
			RSBTEqu equ = equList.get(i);
			if (equ.getEquModel() != null && !equ.getEquModel().equals("")) {// 当表格总的某一个设备数据行上有数据时，执行相应的操作
				equ.setStationGuid(station.getGuid());
				equMapper.insert(equ);
			}
		}

		// 提交equTList到equT表
		for (int i = 0; i < equTList.size(); i++) {
			RSBTEquT equT = equTList.get(i);
			RSBTEqu equ = equList.get(i);
			if (equ.getGuid() != null) {// 当表格总的某一个设备冗余数据行对应着一个设备数据时，执行相应的操作
				equT.setGuid(equ.getGuid());
				equTMapper.insert(equT);
			}
		}

		// 提交antList到ant表
		for (int i = 0; i < antList.size(); i++) {
			RSBTAntFeed ant = antList.get(i);
			RSBTEqu equ = equList.get(i);
			if (equ.getGuid() != null) {
				ant.setGuid(equ.getGuid());//业务特点：表中同一行上的天线guid与设备guid相同
				ant.setStationGuid(station.getGuid());
				antFeedMapper.insert(ant);
			}
		}

		// 提交antTList到antT表
		for (int i = 0; i < antTList.size(); i++) {
			RSBTAntFeedT antT = antTList.get(i);
			RSBTAntFeed ant = antList.get(i);
			RSBTEquT equT = equTList.get(i);
			if (ant.getGuid()!= null) {
				antT.setAtAntNo(equT.getEtEquNo());//业务特点：表中同一行上的天线号与设备号相同
				antT.setGuid(ant.getGuid());
				antT.setAtUnitType(antTCommon.getAtUnitType());
				antFeedTMapper.insert(antT);
			}
		}

	}

	// 提交国无管表5的数据
	@Override
	public void insertFormTF(RSBTStationVo stationVo) {
		// 接收视图层model传来的数据
		RSBTNet net = stationVo.getNet();
		RSBTStation station = stationVo.getStation();
		RSBTStationT stationT = stationVo.getStationT();
		RSBTStationCustom stationCustom = stationVo.getStationCustom();
		List<TechDataForm_Tab> pageList = stationVo.getPageList();

		// 处理地理坐标,把经纬度的度分秒数据统一用度来表示
		double la = stationCustom.getLa1() + (stationCustom.getLa2() / 60) + (stationCustom.getLa3() / 3600);
		BigDecimal statLa = new BigDecimal(la);
		station.setStatLa(statLa);

		double lg = stationCustom.getLg1() + (stationCustom.getLg2() / 60) + (stationCustom.getLg3() / 3600);
		BigDecimal statLg = new BigDecimal(lg);
		station.setStatLg(statLg);

		// 设置页面上没有，但是数据库表存在的必填字段
		station.setStatAppType("TF");

		// 插入station表
		if (net != null) {
			station.setNetGuid(net.getGuid());
		}
		stationMapper.insert(station);

		// 插入stationT表
		stationT.setGuid(station.getGuid());
		stationTMapper.insert(stationT);

		// 提交所有Tab中的数据
		for (int i = 0; i < pageList.size(); i++) {
			// 提交某个tab中的Link表（待完成）

			// 提交某个tab中的FreqList

			List<RSBTFreq> freqList = pageList.get(i).getFreqList();
			RSBTFreq freqCommon = pageList.get(i).getFreq();// freqList中freq的公共信息
			for (int j = 0; j < freqList.size(); j++) {
				RSBTFreq freq = freqList.get(j);
				if (freq.getFreqEfb() != null && !freq.getFreqEfb().equals("")) {// 当表格总的某一个频率数据行上有数据时，执行相应的操作
					// 公共信息赋予到freqList中的freq
					freq.setStationGuid(station.getGuid());
					freq.setFreqMod(freqCommon.getFreqMod());
					freq.setFreqType(freqCommon.getFreqType());
					freq.setFreqEBand(freqCommon.getFreqEBand());
					if (freqCommon.getFreqType().equals("0")) {// 业务特点：信(波)道划分类型为频点时，收（发）频率的上、下限相等
						freq.setFreqEfe(freq.getFreqEfb());
					}
					// 提交freqList中的freq
					freqMapper.insert(freq);
				}
			}

			// 提交页面中某个tab中的FreqTList
			List<RSBTFreqT> freqTList = pageList.get(i).getFreqTList();
			RSBTFreqT freqTCommon = pageList.get(i).getFreqT();// freqTList中freqT的公共信息
			for (int j = 0; j < freqTList.size(); j++) {
				RSBTFreqT freqT = freqTList.get(j);
				RSBTFreq freq = freqList.get(j);
				if (freq.getGuid() != null) {// 当表格总的某一个频率冗余数据行对应着一个频率数据时，执行相应的操作
					// 公共信息赋予到freqTList中的freqT
					freqT.setGuid(freq.getGuid());
					freqT.setFtFreqType(freqTCommon.getFtFreqType());
					// 提交freqTList中freqT
					freqTMapper.insert(freqT);
				}
			}

			// 提交页面中某个tab中的EquList
			List<RSBTEqu> equList = pageList.get(i).getEquList();
			RSBTEqu equCommon = pageList.get(i).getEqu();
			for (int j = 0; j < equList.size(); j++) {
				RSBTEqu equ = equList.get(j);
				if (equ.getEquCode() != null && !equ.getEquCode().equals("")) {// 当表格总的某一个设备数据上有数据时，执行相应的操作
					// 公共信息赋予到equList中的equ
					equ.setStationGuid(station.getGuid());
					equ.setEquMenu(equCommon.getEquMenu());
					equ.setEquModel(equCommon.getEquModel());
					equ.setEquAuth(equCommon.getEquAuth());
					equ.setEquPow(equCommon.getEquPow());
					// 提交equList中的equ
					equMapper.insert(equ);
				}
			}

			// 提交页面中某个tab中的EquTList
			List<RSBTEquT> equTList = pageList.get(i).getEquTList();
			RSBTEquT equTCommon = pageList.get(i).getEquT();
			for (int j = 0; j < equTList.size(); j++) {
				RSBTEquT equT = equTList.get(j);
				RSBTEqu equ = equList.get(j);
				if (equ.getGuid() != null) {// 当表格总的某一个设备冗余数据对应着一个设备数据时，执行相应的操作
					// 公共信息赋予到equTList中的equT
					equT.setGuid(equ.getGuid());
					equT.setEtEquTl(equTCommon.getEtEquTl());
					equT.setEtPowU(equTCommon.getEtPowU());
					equT.setEtEquRnq(equTCommon.getEtEquRnq());
					// 提交equTList中的equT
					equTMapper.insert(equT);
				}
			}

			// 提交页面中某个tab中的Ant表
			RSBTAntFeed ant = pageList.get(i).getAnt();
			ant.setStationGuid(station.getGuid());
			ant.setAntRgain(ant.getAntEgain());// 业务特点：天线的收、发增益相等
			antFeedMapper.insert(ant);

			// 提交页面中某个tab中的AntT表
			RSBTAntFeedT antT = pageList.get(i).getAntT();
			antT.setGuid(ant.getGuid());
			antFeedTMapper.insert(antT);

			// 提交页面中某个tab中的Feed表
			RSBTAntFeed feed = pageList.get(i).getFeed();
			feed.setStationGuid(station.getGuid());
			antFeedMapper.insert(feed);

		}

	}

	// 提交国无管表6的数据
	@Override
	public void insertFormE(RSBTStationVo stationVo) {
		// 接收视图层model传来的数据
		RSBTNet net = stationVo.getNet();
		RSBTStation station = stationVo.getStation();
		RSBTStationT stationT = stationVo.getStationT();
		RSBTStationCustom stationCustom = stationVo.getStationCustom();

		// 处理地理坐标,把经纬度的度分秒数据统一用度来表示
		double la = stationCustom.getLa1() + (stationCustom.getLa2() / 60) + (stationCustom.getLa3() / 3600);
		BigDecimal statLa = new BigDecimal(la);
		station.setStatLa(statLa);

		double lg = stationCustom.getLg1() + (stationCustom.getLg2() / 60) + (stationCustom.getLg3() / 3600);
		BigDecimal statLg = new BigDecimal(lg);
		station.setStatLg(statLg);

		// 设置页面上没有，但是数据库表存在的必填字段
		station.setStatAppType("E");

		// 插入station表
		if (net != null) {
			station.setNetGuid(net.getGuid());
		}
		stationMapper.insert(station);

		// 插入stationT表
		stationT.setGuid(station.getGuid());
		stationTMapper.insert(stationT);

	}

	// 提交国无管表7的数据
	@Override
	public void insertFormB(RSBTStationVo stationVo) {
		// 接收视图层model传来的数据
		RSBTNet net = stationVo.getNet();
		RSBTStation station = stationVo.getStation();
		RSBTStationT stationT = stationVo.getStationT();

		// 设置页面上没有，但是数据库表存在的必填字段
		station.setStatAppType("B");

		// 插入station表
		if (net != null) {
			station.setNetGuid(net.getGuid());
		}
		stationMapper.insert(station);

		// 插入stationT表
		stationT.setGuid(station.getGuid());
		stationTMapper.insert(stationT);

	}

	// 提交国无管表8的数据
	@Override
	public void insertFormS(RSBTStationVo stationVo) {
		// 接收视图层model传来的数据
		RSBTNet net = stationVo.getNet();
		RSBTStation station = stationVo.getStation();
		RSBTStationT stationT = stationVo.getStationT();

		// 设置页面上没有，但是数据库表存在的必填字段
		station.setStatAppType("S");

		// 插入station表
		if (net != null) {
			station.setNetGuid(net.getGuid());
		}
		stationMapper.insert(station);

		// 插入stationT表
		stationT.setGuid(station.getGuid());
		stationTMapper.insert(stationT);

	}

	// 提交国无管表9的数据
	@Override
	public void insertFormA(RSBTStationVo stationVo) {
		// 接收视图层model传来的数据
		RSBTNet net = stationVo.getNet();
		RSBTStation station = stationVo.getStation();
		RSBTStationT stationT = stationVo.getStationT();

		// 设置页面上没有，但是数据库表存在的必填字段
		station.setStatAppType("A");

		// 插入station表
		if (net != null) {
			station.setNetGuid(net.getGuid());
		}
		stationMapper.insert(station);

		// 插入stationT表
		stationT.setGuid(station.getGuid());
		stationTMapper.insert(stationT);

	}

	// 提交国无管表10的数据
	@Override
	public void insertFormR(RSBTStationVo stationVo) {
		// 接收视图层model传来的数据
		RSBTNet net = stationVo.getNet();
		RSBTStation station = stationVo.getStation();
		RSBTStationT stationT = stationVo.getStationT();

		// 设置页面上没有，但是数据库表存在的必填字段
		station.setStatAppType("R");

		// 插入station表
		if (net != null) {
			station.setNetGuid(net.getGuid());
		}
		stationMapper.insert(station);

		// 插入stationT表
		stationT.setGuid(station.getGuid());
		stationTMapper.insert(stationT);

	}

	// 提交国无管表11的数据
	@Override
	public void insertFormC(RSBTStationVo stationVo) {
		// 接收视图层model传来的数据
		RSBTNet net = stationVo.getNet();
		RSBTStation station = stationVo.getStation();
		RSBTStationT stationT = stationVo.getStationT();

		// 设置页面上没有，但是数据库表存在的必填字段
		station.setStatAppType("C");

		// 插入station表
		if (net != null) {
			station.setNetGuid(net.getGuid());
		}
		stationMapper.insert(station);

		// 插入stationT表
		stationT.setGuid(station.getGuid());
		stationTMapper.insert(stationT);

	}

	// 提交国无管表12的数据
	@Override
	public void insertFormD(RSBTStationVo stationVo) {
		// 接收视图层model传来的数据
		RSBTNet net = stationVo.getNet();
		RSBTStation station = stationVo.getStation();
		RSBTStationT stationT = stationVo.getStationT();

		// 设置页面上没有，但是数据库表存在的必填字段
		station.setStatAppType("D");

		// 插入station表
		if (net != null) {
			station.setNetGuid(net.getGuid());
		}
		stationMapper.insert(station);

		// 插入stationT表
		stationT.setGuid(station.getGuid());
		stationTMapper.insert(stationT);

	}

	// 提交国无管表13的数据
	@Override
	public void insertFormV(RSBTStationVo stationVo) {
		// 接收视图层model传来的数据
		RSBTNet net = stationVo.getNet();
		RSBTStation station = stationVo.getStation();
		RSBTStationT stationT = stationVo.getStationT();

		// 设置页面上没有，但是数据库表存在的必填字段
		station.setStatAppType("V");

		// 插入station表
		if (net != null) {
			station.setNetGuid(net.getGuid());
		}
		stationMapper.insert(station);

		// 插入stationT表
		stationT.setGuid(station.getGuid());
		stationTMapper.insert(stationT);

	}

	// 提交国无管表14的数据
	@Override
	public void insertFormME(RSBTStationVo stationVo) {
		// 接收视图层model传来的数据
		RSBTNet net = stationVo.getNet();
		RSBTStation station = stationVo.getStation();
		RSBTStationT stationT = stationVo.getStationT();

		// 设置页面上没有，但是数据库表存在的必填字段
		station.setStatAppType("ME");

		// 插入station表
		if (net != null) {
			station.setNetGuid(net.getGuid());
		}
		stationMapper.insert(station);

		// 插入stationT表
		stationT.setGuid(station.getGuid());
		stationTMapper.insert(stationT);

	}

}
