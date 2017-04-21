package com.rx.rmip.corebiz.service.modules.freq.allocation.model;

import java.io.Serializable;

/**
 * 频率划分信息实体
 * 
 * @author 章江方
 * @createTime 2016年5月10日 下午4:46:06
 */
public class FrmAllocation implements Serializable, Cloneable {

	/**
	 * 序列化
	 */
	private static final long serialVersionUID = 4156815620297145803L;

	/**
	 * 主键
	 */
	private String id;

	/**
	 * 频率起始值
	 */
	private Double freqStart;

	/**
	 * 频率结束值
	 */
	private Double freqEnd;

	/**
	 * 业务编码
	 */
	private String serviceCode;

	/**
	 * 业务名称
	 */
	private String serviceType;

	/**
	 * 业务名称
	 */
	private String serviceName;

	/**
	 * 业务颜色
	 */
	private String serviceColor;

	/**
	 * 频率别名
	 */
	private String allocAlias;

	/**
	 * 特殊脚注
	 */
	private String specialFootnote;

	/**
	 * 普通脚注
	 */
	private String generalFootnote;

	/**
	 * 区域码
	 */
	private String areaCode;

	@Override
	public Object clone() throws CloneNotSupportedException {
		return super.clone();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSpecialFootnote() {
		return specialFootnote;
	}

	public void setSpecialFootnote(String specialFootnote) {
		this.specialFootnote = specialFootnote;
	}

	public String getGeneralFootnote() {
		return generalFootnote;
	}

	public void setGeneralFootnote(String generalFootnote) {
		this.generalFootnote = generalFootnote;
	}

	public Double getFreqStart() {
		return freqStart;
	}

	public void setFreqStart(Double freqStart) {
		this.freqStart = freqStart;
	}

	public Double getFreqEnd() {
		return freqEnd;
	}

	public void setFreqEnd(Double freqEnd) {
		this.freqEnd = freqEnd;
	}

	public String getServiceCode() {
		return serviceCode;
	}

	public void setServiceCode(String serviceCode) {
		this.serviceCode = serviceCode;
	}

	public String getServiceType() {
		return serviceType;
	}

	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}

	public String getAllocAlias() {
		return allocAlias;
	}

	public void setAllocAlias(String allocAlias) {
		this.allocAlias = allocAlias;
	}

	public String getAreaCode() {
		return areaCode;
	}

	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}

	public String getServiceName() {
		return serviceName;
	}

	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}

	public String getServiceColor() {
		return serviceColor;
	}

	public void setServiceColor(String serviceColor) {
		this.serviceColor = serviceColor;
	}
}
