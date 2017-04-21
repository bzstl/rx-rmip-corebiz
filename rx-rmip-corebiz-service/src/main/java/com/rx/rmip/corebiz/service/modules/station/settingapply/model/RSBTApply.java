package com.rx.rmip.corebiz.service.modules.station.settingapply.model;

import java.util.Date;

public class RSBTApply {
    private String guid;

    private String orgGuid;

    private String netGuid;

    private String orgManagerGuid;

    private String appCode;

    private String appType;

    private String appSubType;

    private String appObjectType;

    private Date appDate;

    private Date appFtlb;

    private Date appFtle;

    private String memo;

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

    public String getNetGuid() {
        return netGuid;
    }

    public void setNetGuid(String netGuid) {
        this.netGuid = netGuid == null ? null : netGuid.trim();
    }

    public String getOrgManagerGuid() {
        return orgManagerGuid;
    }

    public void setOrgManagerGuid(String orgManagerGuid) {
        this.orgManagerGuid = orgManagerGuid == null ? null : orgManagerGuid.trim();
    }

    public String getAppCode() {
        return appCode;
    }

    public void setAppCode(String appCode) {
        this.appCode = appCode == null ? null : appCode.trim();
    }

    public String getAppType() {
        return appType;
    }

    public void setAppType(String appType) {
        this.appType = appType == null ? null : appType.trim();
    }

    public String getAppSubType() {
        return appSubType;
    }

    public void setAppSubType(String appSubType) {
        this.appSubType = appSubType == null ? null : appSubType.trim();
    }

    public String getAppObjectType() {
        return appObjectType;
    }

    public void setAppObjectType(String appObjectType) {
        this.appObjectType = appObjectType == null ? null : appObjectType.trim();
    }

    public Date getAppDate() {
        return appDate;
    }

    public void setAppDate(Date appDate) {
        this.appDate = appDate;
    }

    public Date getAppFtlb() {
        return appFtlb;
    }

    public void setAppFtlb(Date appFtlb) {
        this.appFtlb = appFtlb;
    }

    public Date getAppFtle() {
        return appFtle;
    }

    public void setAppFtle(Date appFtle) {
        this.appFtle = appFtle;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo == null ? null : memo.trim();
    }
}