package com.rx.rmip.corebiz.service.modules.freq.allocation.model;

import java.io.Serializable;

import com.rx.rmip.corebiz.service.utils.CommonUtils;

/**
 * 频率业务类型实体
 * 
 * @author 章江方
 * @createTime 2016年5月11日 上午9:28:45
 */
public class FrmService implements Serializable {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -2527736101604627392L;

	/**
	 * 服务名称
	 */
	private String serviceName;

	/**
	 * 服务颜色标识
	 */
	private Long serviceColor;

	/**
	 * 颜色的十六进制值
	 */
	private String serviceColorHex;

	/**
	 * ?
	 */
	private String isCutline;

	/**
	 * 父类型Code
	 */
	private String parentService;

	/**
	 * 业务编码
	 */
	private String serviceCode;

	public String getServiceName() {
		return serviceName;
	}

	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}

	public Long getServiceColor() {
		return serviceColor;
	}

	public void setServiceColor(Long serviceColor) {
		this.serviceColor = serviceColor;
	}

	public String getIsCutline() {
		return isCutline;
	}

	public void setIsCutline(String isCutline) {
		this.isCutline = isCutline;
	}

	public String getParentService() {
		return parentService;
	}

	public void setParentService(String parentService) {
		this.parentService = parentService;
	}

	public String getServiceCode() {
		return serviceCode;
	}

	public void setServiceCode(String serviceCode) {
		this.serviceCode = serviceCode;
	}

	public String getServiceColorHex() {
		serviceColorHex = CommonUtils.getColor(serviceColor);
		return serviceColorHex;
	}

	public void setServiceColorHex(String serviceColorHex) {
		this.serviceColorHex = serviceColorHex;
	}
}
