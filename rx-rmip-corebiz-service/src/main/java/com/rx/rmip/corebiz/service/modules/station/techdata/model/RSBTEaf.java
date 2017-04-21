package com.rx.rmip.corebiz.service.modules.station.techdata.model;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;

@MyBatisDao
public class RSBTEaf {
    private String guid;

    private String stationGuid;

    private String equGuid;

    private String antGuid;

    private String freqGuid;

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

    public String getEquGuid() {
        return equGuid;
    }

    public void setEquGuid(String equGuid) {
        this.equGuid = equGuid == null ? null : equGuid.trim();
    }

    public String getAntGuid() {
        return antGuid;
    }

    public void setAntGuid(String antGuid) {
        this.antGuid = antGuid == null ? null : antGuid.trim();
    }

    public String getFreqGuid() {
        return freqGuid;
    }

    public void setFreqGuid(String freqGuid) {
        this.freqGuid = freqGuid == null ? null : freqGuid.trim();
    }
}