package com.rx.rmip.corebiz.service.modules.station.settingapply.model;

import java.util.List;

/**
 * 新设台站申请的视图模型
 * @author owner
 *
 */

public class RSBTApplyVo {
	//新设台站申请
	private RSBTApply apply;
	//申请单位
	private RSBTOrg orgApp;
	//缴费单位
	private RSBTOrg orgFee;
	//台站共性数据
	private RSBTNet net;
	//批量频率存贮表信息
	private List<RSBTAppfreq> appfreqList;
	//批量文件列表信息
	private List<RSBTAppfilelist> appfilelistList;

	public RSBTApply getApply() {
		return apply;
	}
	public void setApply(RSBTApply apply) {
		this.apply = apply;
	}
	public RSBTOrg getOrgApp() {
		return orgApp;
	}
	public void setOrgApp(RSBTOrg orgApp) {
		this.orgApp = orgApp;
	}
	public RSBTOrg getOrgFee() {
		return orgFee;
	}
	public void setOrgFee(RSBTOrg orgFee) {
		this.orgFee = orgFee;
	}
	public RSBTNet getNet() {
		return net;
	}
	public void setNet(RSBTNet net) {
		this.net = net;
	}

	public List<RSBTAppfreq> getAppfreqList() {
		return appfreqList;
	}
	public void setAppfreqList(List<RSBTAppfreq> appfreqList) {
		this.appfreqList = appfreqList;
	}
	public List<RSBTAppfilelist> getAppfilelistList() {
		return appfilelistList;
	}
	public void setAppfilelistList(List<RSBTAppfilelist> appfilelistList) {
		this.appfilelistList = appfilelistList;
	}

}
