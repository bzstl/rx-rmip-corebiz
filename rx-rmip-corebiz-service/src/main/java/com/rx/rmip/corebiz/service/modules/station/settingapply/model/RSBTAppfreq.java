package com.rx.rmip.corebiz.service.modules.station.settingapply.model;

import java.math.BigDecimal;

public class RSBTAppfreq {
    private String guid;

    private String appGuid;

    private String appCode;

    private BigDecimal appFreqLc;

    private BigDecimal appFreqUc;

    private BigDecimal appFreqLfb;

    private BigDecimal appFreqLfe;

    private BigDecimal appFreqLb;

    private BigDecimal appFreqUfb;

    private BigDecimal appFreqUfe;

    private BigDecimal appFreqUb;

    private String appFreqCode;

    private String appFreqType;

    public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid == null ? null : guid.trim();
    }

    public String getAppGuid() {
        return appGuid;
    }

    public void setAppGuid(String appGuid) {
        this.appGuid = appGuid == null ? null : appGuid.trim();
    }

    public String getAppCode() {
        return appCode;
    }

    public void setAppCode(String appCode) {
        this.appCode = appCode == null ? null : appCode.trim();
    }

    public BigDecimal getAppFreqLc() {
        return appFreqLc;
    }

    public void setAppFreqLc(BigDecimal appFreqLc) {
        this.appFreqLc = appFreqLc;
    }

    public BigDecimal getAppFreqUc() {
        return appFreqUc;
    }

    public void setAppFreqUc(BigDecimal appFreqUc) {
        this.appFreqUc = appFreqUc;
    }

    public BigDecimal getAppFreqLfb() {
        return appFreqLfb;
    }

    public void setAppFreqLfb(BigDecimal appFreqLfb) {
        this.appFreqLfb = appFreqLfb;
    }

    public BigDecimal getAppFreqLfe() {
        return appFreqLfe;
    }

    public void setAppFreqLfe(BigDecimal appFreqLfe) {
        this.appFreqLfe = appFreqLfe;
    }

    public BigDecimal getAppFreqLb() {
        return appFreqLb;
    }

    public void setAppFreqLb(BigDecimal appFreqLb) {
        this.appFreqLb = appFreqLb;
    }

    public BigDecimal getAppFreqUfb() {
        return appFreqUfb;
    }

    public void setAppFreqUfb(BigDecimal appFreqUfb) {
        this.appFreqUfb = appFreqUfb;
    }

    public BigDecimal getAppFreqUfe() {
        return appFreqUfe;
    }

    public void setAppFreqUfe(BigDecimal appFreqUfe) {
        this.appFreqUfe = appFreqUfe;
    }

    public BigDecimal getAppFreqUb() {
        return appFreqUb;
    }

    public void setAppFreqUb(BigDecimal appFreqUb) {
        this.appFreqUb = appFreqUb;
    }

    public String getAppFreqCode() {
        return appFreqCode;
    }

    public void setAppFreqCode(String appFreqCode) {
        this.appFreqCode = appFreqCode == null ? null : appFreqCode.trim();
    }

    public String getAppFreqType() {
        return appFreqType;
    }

    public void setAppFreqType(String appFreqType) {
        this.appFreqType = appFreqType == null ? null : appFreqType.trim();
    }
}