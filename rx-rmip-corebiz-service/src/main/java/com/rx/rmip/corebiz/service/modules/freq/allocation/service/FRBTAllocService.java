package com.rx.rmip.corebiz.service.modules.freq.allocation.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rx.rmip.corebiz.service.modules.freq.allocation.dao.FRBTAllocationMapper;
import com.rx.rmip.corebiz.service.modules.freq.allocation.dao.FrmAllocationMapper;
import com.rx.rmip.corebiz.service.modules.freq.allocation.model.FRBTAllocation;
import com.rx.rmip.corebiz.service.modules.freq.allocation.model.FrmAllocation;
import com.rx.rmip.corebiz.service.modules.freq.allocation.model.FrmFootnote;
import com.rx.rmip.corebiz.service.modules.freq.allocation.model.FrmService;

/**
 * 频率划分service
 * 
 * @author 牛旭
 * @date 2016年10月25日 上午9:46:47
 */
@Service
public class FRBTAllocService {

	@Autowired
	private FRBTAllocationMapper fMapper;

	private static final Logger logger = Logger.getLogger(FRBTAllocService.class);
	/**
	 * 从数据库中查出各个区域的频率划分数据
	 * 
	 * @author 牛旭
	 * @date 2016年10月31日 下午3:37:12
	 * 
	 * @return
	 */
	public Map<String, List<FRBTAllocation>> getFRBTAllocData() {
		Map<String, List<FRBTAllocation>> allocationsMap = new LinkedHashMap<>();
		List<FRBTAllocation> fAllocCNs = fMapper.selectByAreaCodeAndBand("CN");
		allocationsMap.put("CN", fAllocCNs);
		List<FRBTAllocation> fAllocHKs = fMapper.selectByAreaCodeAndBand("HK");
		allocationsMap.put("HK", fAllocHKs);
		List<FRBTAllocation> fAllocITU3s = fMapper.selectByAreaCodeAndBand("ITU3");
		allocationsMap.put("ITU3", fAllocITU3s);
		List<FRBTAllocation> fAllocMOs = fMapper.selectByAreaCodeAndBand("MO");
		allocationsMap.put("MO", fAllocMOs);
		return allocationsMap;
	}

	/**
	 * 获取各个区域频率划分数据的值并用作锚点，并对锚点进行排序
	 * 
	 * @author 牛旭
	 * @date 2016年10月31日 下午4:34:15
	 * 
	 * @param allocMap
	 *            各个区域的频率划分数据
	 * @return
	 */
	public List<BigDecimal> getAllocAnchors(Map<String, List<FRBTAllocation>> allocMap) {
		List<BigDecimal> anchors = new ArrayList<BigDecimal>();
		for (String allocKey : allocMap.keySet()) {
			List<FRBTAllocation> allocations = allocMap.get(allocKey);
			for (FRBTAllocation allocation : allocations) {
				if (!anchors.contains(allocation.getBandB())) {
					anchors.add(allocation.getBandB());
				}
//				if (!anchors.contains(allocation.getBandE())) {
//					anchors.add(allocation.getBandE());
//				}
			}
		}
		Collections.sort(anchors, new Comparator<BigDecimal>() {
			@Override
			public int compare(BigDecimal o1, BigDecimal o2) {
				// if (o1 == o2) {
				// return 0;
				// } else if (o1 > o2) {
				// return 1;
				// }
				//
				// return -1;
				return o1.compareTo(o2);
			}
		});
		return anchors;
	}
	
	@Autowired
	public FrmAllocationMapper frmAllocationMapper;

	/**
	 * 缓存业务类型数据
	 */
	private static Map<String, FrmService> services = new LinkedHashMap<>();

	/**
	 * 缓存脚注数据
	 */
	private static Map<String, FrmFootnote> footNotes = new HashMap<>();

	/**
	 * 根据区域码查找全部频率划分数据
	 * 
	 * @param areaCode
	 * @return
	 */
	public Map<String, Map<String, List<FrmAllocation>>> getAllocations(String areaCode) {

		// 频段数据
		List<FrmAllocation> allocations = frmAllocationMapper.selectAllocations(areaCode);

		// 将同频段数据进行分组
		Map<String, List<FrmAllocation>> allocationGroup = new LinkedHashMap<>();

		for (FrmAllocation frmAllocation : allocations) {

			// 根据业务代码获取业务类型对象
			FrmService frmService = getFrmService(frmAllocation.getServiceCode());
			if (null == frmService) {
				logger.info(frmAllocation.getId() + "的业务类型数据不存在");
				continue;
			}

			// 设置业务名称
			frmAllocation.setServiceName(frmService.getServiceName());

			// 将数字型的颜色值转为RGB值
			frmAllocation.setServiceColor(frmService.getServiceColorHex());

			// 组装Key
			String key = frmAllocation.getFreqStart() + "_" + frmAllocation.getFreqEnd();

			List<FrmAllocation> tempAllocations = null;

			if (!allocationGroup.containsKey(key)) {
				tempAllocations = new ArrayList<>();
			} else {
				tempAllocations = allocationGroup.get(key);
			}

			tempAllocations.add(frmAllocation);
			allocationGroup.put(key, tempAllocations);
		}

		return splitAllocationGroup(allocationGroup);
	}

	/**
	 * 拆分频段数据，将段末尾跨频率段的数据拆到下一个段，<br/>
	 * 划分依据是：<br/>
	 * 0KHz-300KHz<br/>
	 * 300KHz-3MHz<br/>
	 * 3MHz-30MHz<br/>
	 * 30MHz-300MHz<br/>
	 * 300MHz-3GHz<br/>
	 * 3GHz-30GHz<br/>
	 * 30GHz-3000GHz<br/>
	 * 
	 * @param allocationGroup
	 * @throws CloneNotSupportedException
	 */
	private Map<String, Map<String, List<FrmAllocation>>> splitAllocationGroup(
			Map<String, List<FrmAllocation>> allocationGroup) {
		// 遍历Map
		Set<String> keySet = allocationGroup.keySet();
		Iterator<String> keyIterator = keySet.iterator();

		Map<String, Map<String, List<FrmAllocation>>> allocDatas = new LinkedHashMap<>();

		// 定义存放七个频段数据的容器
		Map<String, List<FrmAllocation>> Hz0K_300K = new LinkedHashMap<>();
		Map<String, List<FrmAllocation>> Hz300K_3M = new LinkedHashMap<>();
		Map<String, List<FrmAllocation>> Hz3M_30M = new LinkedHashMap<>();
		Map<String, List<FrmAllocation>> Hz30M_300M = new LinkedHashMap<>();
		Map<String, List<FrmAllocation>> Hz300M_3G = new LinkedHashMap<>();
		Map<String, List<FrmAllocation>> Hz3G_30G = new LinkedHashMap<>();
		Map<String, List<FrmAllocation>> Hz30G_3000G = new LinkedHashMap<>();

		try {
			while (keyIterator.hasNext()) {
				String key = keyIterator.next();
				String[] freqs = key.split("_");
				Double freqStart = Double.valueOf(freqs[0]);
				Double freqEnd = Double.valueOf(freqs[1]);
				List<FrmAllocation> frmAllocations = allocationGroup.get(key);

				if (freqStart < 0.3) {
					doSplit(0.3, Hz0K_300K, Hz300K_3M, key, freqStart, freqEnd, frmAllocations);
					continue;
				}

				if (freqStart < 3.0) {
					doSplit(3.0, Hz300K_3M, Hz3M_30M, key, freqStart, freqEnd, frmAllocations);
					continue;
				}

				if (freqStart < 30.0) {
					doSplit(30.0, Hz3M_30M, Hz30M_300M, key, freqStart, freqEnd, frmAllocations);
					continue;
				}

				if (freqStart < 300.0) {
					doSplit(300.0, Hz30M_300M, Hz300M_3G, key, freqStart, freqEnd, frmAllocations);
					continue;
				}

				if (freqStart < 3000.0) {
					doSplit(3000.0, Hz300M_3G, Hz3G_30G, key, freqStart, freqEnd, frmAllocations);
					continue;
				}

				if (freqStart < 30000.0) {
					doSplit(30000.0, Hz3G_30G, Hz30G_3000G, key, freqStart, freqEnd, frmAllocations);
					continue;
				}

				if (freqStart < 3000000.0) {
					doSplit(1000000.0, Hz30G_3000G, Hz30G_3000G, key, freqStart, freqEnd, frmAllocations);
					continue;
				}
			}
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (CloneNotSupportedException e) {
			e.printStackTrace();
		}

		allocDatas.put("Hz0K_300K", Hz0K_300K);
		allocDatas.put("Hz300K_3M", Hz300K_3M);
		allocDatas.put("Hz3M_30M", Hz3M_30M);
		allocDatas.put("Hz30M_300M", Hz30M_300M);
		allocDatas.put("Hz300M_3G", Hz300M_3G);
		allocDatas.put("Hz3G_30G", Hz3G_30G);
		allocDatas.put("Hz30G_3000G", Hz30G_3000G);

		return allocDatas;
	}

	/**
	 * 执行分解
	 * 
	 * @param alloc
	 * @param frms
	 * @param nextFrms
	 * @param key
	 * @param freqStart
	 * @param freqEnd
	 * @param frmAllocations
	 * @throws CloneNotSupportedException
	 */
	private void doSplit(double alloc, Map<String, List<FrmAllocation>> frms, Map<String, List<FrmAllocation>> nextFrms,
			String key, Double freqStart, Double freqEnd, List<FrmAllocation> frmAllocations)
			throws CloneNotSupportedException {
		// 0KHz-300KHz
		if (freqEnd <= alloc) {
			frms.put(key, frmAllocations);
		} else {
			List<FrmAllocation> tmpfrmAllocations1 = new ArrayList<>();
			List<FrmAllocation> tmpfrmAllocations2 = new ArrayList<>();
			String key1 = freqStart + "_" + alloc;
			String key2 = alloc + "_" + freqEnd;
			for (FrmAllocation frmAllocation : frmAllocations) {
				FrmAllocation tmpAlloc1 = (FrmAllocation) frmAllocation.clone();
				// 设置新的频段结束值
				tmpAlloc1.setFreqEnd(alloc);
				tmpfrmAllocations1.add(tmpAlloc1);

				FrmAllocation tmpAlloc2 = (FrmAllocation) frmAllocation.clone();
				// 设置新的频段结束值
				tmpAlloc2.setFreqStart(alloc);
				tmpfrmAllocations2.add(tmpAlloc2);
			}

			// 分别添加至该段的末尾和下一段的开始
			frms.put(key1, tmpfrmAllocations1);
			nextFrms.put(key2, tmpfrmAllocations2);
		}
	}

	/**
	 * 获取全部无线电业务类型
	 * 
	 * @return
	 */
	public Map<String, FrmService> getFrmServices() {
		// 如未命中缓存，则查询
		if (services.isEmpty()) {

			// 查询业务类型
			List<FrmService> frmServices = frmAllocationMapper.selectFrmServices();

			// 组装Map
			for (FrmService frmService : frmServices) {
				services.put(frmService.getServiceCode(), frmService);
			}
		}

		return services;
	}

	/**
	 * 根据业务代码获取业务类型对象
	 * 
	 * @param serviceCode
	 * @return
	 */
	public FrmService getFrmService(String serviceCode) {
		Map<String, FrmService> frmServices = getFrmServices();

		return frmServices.get(serviceCode);
	}

	/**
	 * 获取无线电脚注信息
	 * 
	 * @return
	 */
	public Map<String, FrmFootnote> getFrmFootnotes() {
		// 如未命中缓存，则查询
		if (footNotes.isEmpty()) {

			// 查询业务类型
			List<FrmFootnote> frmFootnotes = frmAllocationMapper.selectFrmFootnotes();

			// 组装Map
			for (FrmFootnote frmFootnote : frmFootnotes) {
				footNotes.put(frmFootnote.getFootnoteCode(), frmFootnote);
			}
		}

		return footNotes;
	}
}
