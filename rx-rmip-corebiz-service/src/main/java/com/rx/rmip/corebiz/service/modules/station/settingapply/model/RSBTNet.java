package com.rx.rmip.corebiz.service.modules.station.settingapply.model;

import java.math.BigDecimal;
import java.util.Date;

public class RSBTNet {
    private String guid;

    private String orgGuid;//申请单位GUID

    private String feeGuid;//缴费单位GUID

    private String orgCode;//无线电管理机构组织机构代码

    private String netName;//无线电系统/网络名称

    private String netSvn;//通信业务/系统类型

    private String netSp;//业务性质

    private String netTs;//技术体制

    private BigDecimal netBand;//信道带宽/波道间隔

    private String netArea;//使用范围

    private String netUse;//网络用途

    private String netSatName;//卫星/星座名称

    private String netLg;//标称轨道经度

    private Date netStartDate;//启用日期

    private Date netConfirmDate;//批准日期

    private Date netExpiredDate;//报废日期

    public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid == null ? null : guid.trim();
    }

    public String getOrgGuid() {
        return orgGuid;
    }

    public void setOrgGuid(String orgGuid) {
        this.orgGuid = orgGuid == null ? null : orgGuid.trim();
    }

    public String getFeeGuid() {
        return feeGuid;
    }

    public void setFeeGuid(String feeGuid) {
        this.feeGuid = feeGuid == null ? null : feeGuid.trim();
    }

    public String getOrgCode() {
        return orgCode;
    }

    public void setOrgCode(String orgCode) {
        this.orgCode = orgCode == null ? null : orgCode.trim();
    }

    public String getNetName() {
        return netName;
    }

    public void setNetName(String netName) {
        this.netName = netName == null ? null : netName.trim();
    }

    public String getNetSvn() {
        return netSvn;
    }

    public void setNetSvn(String netSvn) {
        this.netSvn = netSvn == null ? null : netSvn.trim();
    }

    public String getNetSp() {
        return netSp;
    }

    public void setNetSp(String netSp) {
        this.netSp = netSp == null ? null : netSp.trim();
    }

    public String getNetTs() {
        return netTs;
    }

    public void setNetTs(String netTs) {
        this.netTs = netTs == null ? null : netTs.trim();
    }

    public BigDecimal getNetBand() {
        return netBand;
    }

    public void setNetBand(BigDecimal netBand) {
        this.netBand = netBand;
    }

    public String getNetArea() {
        return netArea;
    }

    public void setNetArea(String netArea) {
        this.netArea = netArea == null ? null : netArea.trim();
    }

    public String getNetUse() {
        return netUse;
    }

    public void setNetUse(String netUse) {
        this.netUse = netUse == null ? null : netUse.trim();
    }

    public String getNetSatName() {
        return netSatName;
    }

    public void setNetSatName(String netSatName) {
        this.netSatName = netSatName == null ? null : netSatName.trim();
    }

    public String getNetLg() {
        return netLg;
    }

    public void setNetLg(String netLg) {
        this.netLg = netLg == null ? null : netLg.trim();
    }

    public Date getNetStartDate() {
        return netStartDate;
    }

    public void setNetStartDate(Date netStartDate) {
        this.netStartDate = netStartDate;
    }

    public Date getNetConfirmDate() {
        return netConfirmDate;
    }

    public void setNetConfirmDate(Date netConfirmDate) {
        this.netConfirmDate = netConfirmDate;
    }

    public Date getNetExpiredDate() {
        return netExpiredDate;
    }

    public void setNetExpiredDate(Date netExpiredDate) {
        this.netExpiredDate = netExpiredDate;
    }
}