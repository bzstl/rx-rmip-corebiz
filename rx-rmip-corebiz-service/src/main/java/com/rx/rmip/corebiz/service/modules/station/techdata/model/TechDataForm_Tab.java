package com.rx.rmip.corebiz.service.modules.station.techdata.model;

import java.util.List;

public class TechDataForm_Tab {
	private RSBTEqu equ;  // equList中的公共信息
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
		for (int i = 0; i < equTList.size(); i++) {
			String guid = equList.get(i).getGuid();
			if (guid==null&&equTList.get(i).getGuid()==null) {//getGuid()可换成别的字段，用来判断这个对象是否为空
				continue;
			}
			equTList.get(i).setGuid(guid);
		}
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
		for (int i = 0; i < freqTList.size(); i++) {
			String  guid = freqList.get(i).getGuid();
			if (guid==null&&freqList.get(i).getGuid()==null) {//getGuid()可换成别的字段，用来判断这个对象是否为空
				continue;
			}
			freqTList.get(i).setGuid(guid);
		}
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
		for (int i = 0; i < antTList.size(); i++) {
			String  guid = antList.get(i).getGuid();
			if (guid==null&&antList.get(i).getGuid()==null) {//getGuid()可换成别的字段，用来判断这个对象是否为空
				continue;
			}
			antTList.get(i).setGuid(guid);
		}
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
		for (int i = 0; i < feedTList.size(); i++) {
			String  guid = feedList.get(i).getGuid();
			if (guid==null&&feedList.get(i).getGuid()==null) {//getGuid()可换成别的字段，用来判断这个对象是否为空
				continue;
			}
			feedTList.get(i).setGuid(guid);
		}
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
}
