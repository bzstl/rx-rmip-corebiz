package com.rx.rmip.corebiz.service.modules.station.settingapply.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rx.rmip.corebiz.service.modules.station.settingapply.dao.RSBTAppfilelistMapper;
import com.rx.rmip.corebiz.service.modules.station.settingapply.dao.RSBTAppfreqMapper;
import com.rx.rmip.corebiz.service.modules.station.settingapply.dao.RSBTApplyMapper;
import com.rx.rmip.corebiz.service.modules.station.settingapply.dao.RSBTNetMapper;
import com.rx.rmip.corebiz.service.modules.station.settingapply.dao.RSBTOrgMapper;
import com.rx.rmip.corebiz.service.modules.station.settingapply.model.RSBTAppfilelist;
import com.rx.rmip.corebiz.service.modules.station.settingapply.model.RSBTAppfreq;
import com.rx.rmip.corebiz.service.modules.station.settingapply.model.RSBTApply;
import com.rx.rmip.corebiz.service.modules.station.settingapply.model.RSBTApplyVo;
import com.rx.rmip.corebiz.service.modules.station.settingapply.model.RSBTNet;
import com.rx.rmip.corebiz.service.modules.station.settingapply.model.RSBTOrg;
import com.rx.rmip.corebiz.service.modules.station.settingapply.service.StationSetAppService;


@Service
@Transactional
public class StationSetAppServiceImpl implements StationSetAppService {
	//台站申请表的Dao
	@Autowired
	private RSBTOrgMapper  orgMapper;
	@Autowired
	private RSBTNetMapper netMapper;
	@Autowired
	private RSBTApplyMapper applyMapper;
	@Autowired
	private RSBTAppfilelistMapper appfilelistMapper;
	@Autowired
	private RSBTAppfreqMapper appfreqMapper;

	@Override
	public void insertFormT(RSBTApplyVo applyVo) {
		// TODO Auto-generated method stub
		/**
		 * 新增台站申请业务：
		 * 实现对新增台站申请数据录入数据库的功能
		 * 对 RSBTOrg RSBTNet RSBTApply RSBTAppfilelist RSBTAppfreq
		 * 按照先父表再子表的顺序，把RSBTApplyVo的数据插入这些表中
		 *
		 */

		RSBTOrg orgApp = applyVo.getOrgApp();
		RSBTOrg orgFee = applyVo.getOrgFee();
		RSBTNet net = applyVo.getNet();
		RSBTApply apply = applyVo.getApply();
		List<RSBTAppfreq> appfreqList = applyVo.getAppfreqList();
		List<RSBTAppfilelist> appfilelistList = applyVo.getAppfilelistList();

		//申请单位信息录入
		orgMapper.insert(orgApp);

		//缴费单位信息录入
		orgMapper.insert(orgFee);

		//管理机构信息（是RSBT_APPLY的一个外键）

		//无线电台(站)共性信息录入
		net.setOrgGuid(orgApp.getGuid());
		netMapper.insert(net);

		//申请表信息录入
		apply.setNetGuid(net.getGuid());
		apply.setOrgManagerGuid(orgApp.getGuid());
		apply.setOrgGuid(orgApp.getGuid());
		applyMapper.insert(apply);


		//批量申请表文件列表录入
		for (RSBTAppfilelist d : appfilelistList) {
			if (d.getGuid()!=null) {
				d.setAppGuid(apply.getGuid());
				d.setAppCode(apply.getAppCode());
				appfilelistMapper.insert(d);
			}

		}


		//批量申请表频率存贮表

		for(RSBTAppfreq d : appfreqList) {
			if (d.getGuid()!=null) {
				d.setAppGuid(apply.getGuid());
				d.setAppCode(apply.getAppCode());
				appfreqMapper.insert(d);
			}
		}



	}

}
