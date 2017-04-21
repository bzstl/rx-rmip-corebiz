package com.rx.rmip.corebiz.service.modules.station.techdata.model;

import java.util.List;

import com.rx.rmip.corebiz.service.modules.station.settingapply.model.RSBTNet;

public class RSBTStationVo {
	private String formType;
	private RSBTNet net;
	private RSBTStation station;
	private RSBTStationT stationT;

	private RSBTStationCustom stationCustom;
	private RSBTEqu equ; // equList中的公共信息
	private RSBTEquT equT; // equTList中的公共信息
	private RSBTFreq freq; // freqList中的公共信息
	private RSBTFreqT freqT; // freqTList中的公共信息
	private RSBTAntFeed ant; // antList中的公共信息
	private RSBTAntFeedT antT; // antTList中的公共信息
	private RSBTAntFeed feed; // feedList中的公共信息
	private RSBTAntFeedT feedT; // feedTList中的公共信息

	private List<RSBTEqu> equList;
	private List<RSBTEquT> equTList;
	private List<RSBTFreq> freqList;
	private List<RSBTFreqT> freqTList;
	private List<RSBTAntFeed> antList;
	private List<RSBTAntFeedT> antTList;
	private List<RSBTAntFeed> feedList;
	private List<RSBTAntFeedT> feedTList;
	private List<RSBTEaf> eafList;
	private List<RSBTESe> eSeList;
	private List<RSBTLink> linkList;
	private List<RSBTSTCobj> sTCobjList;
	private List<TechDataForm_Tab> pageList;

	public String getFormType() {
		return formType;
	}

	public void setFormType(String formType) {
		this.formType = formType;
	}

	public RSBTNet getNet() {
		return net;
	}

	public void setNet(RSBTNet net) {
		this.net = net;
	}

	public RSBTStation getStation() {
		return station;
	}

	public void setStation(RSBTStation station) {
		this.station = station;
	}
	public RSBTStationT getStationT() {
		return stationT;
	}

	public void setStationT(RSBTStationT stationT) {
		this.stationT = stationT;
	}

	public RSBTStationCustom getStationCustom() {
		return stationCustom;
	}

	public void setStationCustom(RSBTStationCustom stationCustom) {
		this.stationCustom = stationCustom;
	}

	public RSBTEqu getEqu() {
		return equ;
	}

	public void setEqu(RSBTEqu equ) {
		this.equ = equ;
	}

	public RSBTEquT getEquT() {
		return equT;
	}

	public void setEquT(RSBTEquT equT) {
		this.equT = equT;
	}

	public RSBTFreq getFreq() {
		return freq;
	}

	public void setFreq(RSBTFreq freq) {
		this.freq = freq;
	}

	public RSBTFreqT getFreqT() {
		return freqT;
	}

	public void setFreqT(RSBTFreqT freqT) {
		this.freqT = freqT;
	}

	public RSBTAntFeed getAnt() {
		return ant;
	}

	public void setAnt(RSBTAntFeed ant) {
		this.ant = ant;
	}

	public RSBTAntFeedT getAntT() {
		return antT;
	}

	public void setAntT(RSBTAntFeedT antT) {
		this.antT = antT;
	}

	public RSBTAntFeed getFeed() {
		return feed;
	}

	public void setFeed(RSBTAntFeed feed) {
		this.feed = feed;
	}

	public RSBTAntFeedT getFeedT() {
		return feedT;
	}

	public void setFeedT(RSBTAntFeedT feedT) {
		this.feedT = feedT;
	}

	public void setAntList(List<RSBTAntFeed> antList) {
		this.antList = antList;
	}

	public List<RSBTEqu> getEquList() {
		return equList;
	}

	public void setEquList(List<RSBTEqu> equList) {
		this.equList = equList;
	}

	public List<RSBTEquT> getEquTList() {
		return equTList;
	}

	public void setEquTList(List<RSBTEquT> equTList) {
		this.equTList = equTList;
	}

	public List<RSBTFreq> getFreqList() {
		return freqList;
	}

	public void setFreqList(List<RSBTFreq> freqList) {
		this.freqList = freqList;
	}

	public List<RSBTFreqT> getFreqTList() {
		return freqTList;
	}

	public void setFreqTList(List<RSBTFreqT> freqTList) {
		this.freqTList = freqTList;
	}

	public List<RSBTAntFeed> getAntList() {
		return antList;
	}

	public void setAntFeedList(List<RSBTAntFeed> antList) {
		this.antList = antList;
	}

	public List<RSBTAntFeedT> getAntTList() {
		return antTList;
	}

	public void setAntTList(List<RSBTAntFeedT> antTList) {
		this.antTList = antTList;
	}

	public List<RSBTAntFeed> getFeedList() {
		return feedList;
	}

	public void setFeedList(List<RSBTAntFeed> feedList) {
		this.feedList = feedList;
	}

	public List<RSBTAntFeedT> getFeedTList() {
		return feedTList;
	}

	public void setFeedTList(List<RSBTAntFeedT> feedTList) {
		this.feedTList = feedTList;
	}

	public List<RSBTEaf> getEafList() {
		return eafList;
	}

	public void setEafList(List<RSBTEaf> eafList) {
		this.eafList = eafList;
	}

	public List<RSBTESe> geteSeList() {
		return eSeList;
	}

	public void seteSeList(List<RSBTESe> eSeList) {
		this.eSeList = eSeList;
	}

	public List<RSBTLink> getLinkList() {
		return linkList;
	}

	public void setLinkList(List<RSBTLink> linkList) {
		this.linkList = linkList;
	}

	public List<RSBTSTCobj> getsTCobjList() {
		return sTCobjList;
	}

	public void setsTCobjList(List<RSBTSTCobj> sTCobjList) {
		this.sTCobjList = sTCobjList;
	}

	public List<TechDataForm_Tab> getPageList() {
		return pageList;
	}

	public void setPageList(List<TechDataForm_Tab> pageList) {
		this.pageList = pageList;
	}
}
