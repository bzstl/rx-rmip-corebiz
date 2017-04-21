package com.rx.rmip.corebiz.service.modules.station.techdata.model;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;

@MyBatisDao
public class RSBTLink {
    private String guid;

    private String netGuidA;

    private String stationGuidA;

    private String guidEafA;

    private String netGuidB;

    private String stationGuidB;

    private String guidEafB;

    public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid == null ? null : guid.trim();
    }

    public String getNetGuidA() {
        return netGuidA;
    }

    public void setNetGuidA(String netGuidA) {
        this.netGuidA = netGuidA == null ? null : netGuidA.trim();
    }

    public String getStationGuidA() {
        return stationGuidA;
    }

    public void setStationGuidA(String stationGuidA) {
        this.stationGuidA = stationGuidA == null ? null : stationGuidA.trim();
    }

    public String getGuidEafA() {
        return guidEafA;
    }

    public void setGuidEafA(String guidEafA) {
        this.guidEafA = guidEafA == null ? null : guidEafA.trim();
    }

    public String getNetGuidB() {
        return netGuidB;
    }

    public void setNetGuidB(String netGuidB) {
        this.netGuidB = netGuidB == null ? null : netGuidB.trim();
    }

    public String getStationGuidB() {
        return stationGuidB;
    }

    public void setStationGuidB(String stationGuidB) {
        this.stationGuidB = stationGuidB == null ? null : stationGuidB.trim();
    }

    public String getGuidEafB() {
        return guidEafB;
    }

    public void setGuidEafB(String guidEafB) {
        this.guidEafB = guidEafB == null ? null : guidEafB.trim();
    }
}