package com.rx.rmip.corebiz.service.modules.station.techdata.model;

import java.math.BigDecimal;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
@MyBatisDao
public class RSBTESe {
    private String guid;

    private String stationGuid;//地球站GUID

    private BigDecimal seComm;//方位角

    private BigDecimal seAngle;//天际线仰角

    private BigDecimal seDis;//障碍物距离

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

    public BigDecimal getSeComm() {
        return seComm;
    }

    public void setSeComm(BigDecimal seComm) {
        this.seComm = seComm;
    }

    public BigDecimal getSeAngle() {
        return seAngle;
    }

    public void setSeAngle(BigDecimal seAngle) {
        this.seAngle = seAngle;
    }

    public BigDecimal getSeDis() {
        return seDis;
    }

    public void setSeDis(BigDecimal seDis) {
        this.seDis = seDis;
    }
}