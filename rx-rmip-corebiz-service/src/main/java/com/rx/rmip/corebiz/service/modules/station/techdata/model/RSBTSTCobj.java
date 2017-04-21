package com.rx.rmip.corebiz.service.modules.station.techdata.model;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;

@MyBatisDao
public class RSBTSTCobj {
    private String guid;

    private String stationGuid;

    private String objType;

    private String objName;

    private String objTdi;

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

    public String getObjType() {
        return objType;
    }

    public void setObjType(String objType) {
        this.objType = objType == null ? null : objType.trim();
    }

    public String getObjName() {
        return objName;
    }

    public void setObjName(String objName) {
        this.objName = objName == null ? null : objName.trim();
    }

    public String getObjTdi() {
        return objTdi;
    }

    public void setObjTdi(String objTdi) {
        this.objTdi = objTdi == null ? null : objTdi.trim();
    }
}