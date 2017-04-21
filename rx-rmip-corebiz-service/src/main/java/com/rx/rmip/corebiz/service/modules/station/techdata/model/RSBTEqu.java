package com.rx.rmip.corebiz.service.modules.station.techdata.model;

import java.math.BigDecimal;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
@MyBatisDao
public class RSBTEqu {
    private String guid;

    private String stationGuid;//

    private String equType;//设备工作方式

    private String equModel;//设备型号

    private String equAuth;//型号核准代码

    private String equMenu;//设备生产厂家

    private String equCode;//设备出厂号

    private String equPf;//功率标识

    private BigDecimal equPow;//发射功率

    private String equMb;//主/备用标识

    public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid == null ? null : guid.trim();
    }

    public String getStationGuid() {
        return stationGuid;
    }

    public void setStationGuid(String stationGuid) {
        this.stationGuid = stationGuid == null ? null : stationGuid.trim();
    }

    public String getEquType() {
        return equType;
    }

    public void setEquType(String equType) {
        this.equType = equType == null ? null : equType.trim();
    }

    public String getEquModel() {
        return equModel;
    }

    public void setEquModel(String equModel) {
        this.equModel = equModel == null ? null : equModel.trim();
    }

    public String getEquAuth() {
        return equAuth;
    }

    public void setEquAuth(String equAuth) {
        this.equAuth = equAuth == null ? null : equAuth.trim();
    }

    public String getEquMenu() {
        return equMenu;
    }

    public void setEquMenu(String equMenu) {
        this.equMenu = equMenu == null ? null : equMenu.trim();
    }

    public String getEquCode() {
        return equCode;
    }

    public void setEquCode(String equCode) {
        this.equCode = equCode == null ? null : equCode.trim();
    }

    public String getEquPf() {
        return equPf;
    }

    public void setEquPf(String equPf) {
        this.equPf = equPf == null ? null : equPf.trim();
    }

    public BigDecimal getEquPow() {
        return equPow;
    }

    public void setEquPow(BigDecimal equPow) {
        this.equPow = equPow;
    }

    public String getEquMb() {
        return equMb;
    }

    public void setEquMb(String equMb) {
        this.equMb = equMb == null ? null : equMb.trim();
    }
}