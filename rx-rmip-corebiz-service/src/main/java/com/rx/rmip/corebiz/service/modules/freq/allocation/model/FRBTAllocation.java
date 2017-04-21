package com.rx.rmip.corebiz.service.modules.freq.allocation.model;

import java.math.BigDecimal;
import java.util.List;

public class FRBTAllocation {
    private String guid;

    private String verCode;

    private String areaCode;

	private BigDecimal bandB;

	private BigDecimal bandE;

    private String fnCode;

	private List<FRBTAllocationService> allocServiceList;

	public List<FRBTAllocationService> getAllocServiceList() {
		return allocServiceList;
	}

	public void setAllocServiceList(List<FRBTAllocationService> allocServiceList) {
		this.allocServiceList = allocServiceList;
	}

	public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid == null ? null : guid.trim();
    }

    public String getVerCode() {
        return verCode;
    }

    public void setVerCode(String verCode) {
        this.verCode = verCode == null ? null : verCode.trim();
    }

    public String getAreaCode() {
        return areaCode;
    }

    public void setAreaCode(String areaCode) {
        this.areaCode = areaCode == null ? null : areaCode.trim();
    }

	public BigDecimal getBandB() {
        return bandB;
    }

	public void setBandB(BigDecimal bandB) {
        this.bandB = bandB;
    }

	public BigDecimal getBandE() {
        return bandE;
    }

	public void setBandE(BigDecimal bandE) {
        this.bandE = bandE;
    }

    public String getFnCode() {
        return fnCode;
    }

    public void setFnCode(String fnCode) {
        this.fnCode = fnCode == null ? null : fnCode.trim();
    }
}