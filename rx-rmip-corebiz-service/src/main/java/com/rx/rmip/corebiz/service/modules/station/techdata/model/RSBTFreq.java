package com.rx.rmip.corebiz.service.modules.station.techdata.model;

import java.math.BigDecimal;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
@MyBatisDao
public class RSBTFreq {
    private String guid;

    private String stationGuid;//

    private String freqType;//信(波)道划分类型：段，波道

    private BigDecimal freqLc;//中心频率(低频)

    private BigDecimal freqUc;//中心频率(高频)

    private BigDecimal freqEfb;//发射频率下限

    private BigDecimal freqEfe;//发射频率上限

    private BigDecimal freqEBand;//发射(必要)带宽

    private BigDecimal freqRfb;//接收频率上限

    private BigDecimal freqRfe;//接收频率下限

    private BigDecimal freqRBand;//接收(必要)带宽

    private String freqMod;//调制方式

    private String freqMb;//主/备用频率标识

    private String freqCode;//国家频率数据库对应码

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

    public String getFreqType() {
        return freqType;
    }

    public void setFreqType(String freqType) {
        this.freqType = freqType == null ? null : freqType.trim();
    }

    public BigDecimal getFreqLc() {
        return freqLc;
    }

    public void setFreqLc(BigDecimal freqLc) {
        this.freqLc = freqLc;
    }

    public BigDecimal getFreqUc() {
        return freqUc;
    }

    public void setFreqUc(BigDecimal freqUc) {
        this.freqUc = freqUc;
    }

    public BigDecimal getFreqEfb() {
        return freqEfb;
    }

    public void setFreqEfb(BigDecimal freqEfb) {
        this.freqEfb = freqEfb;
    }

    public BigDecimal getFreqEfe() {
        return freqEfe;
    }

    public void setFreqEfe(BigDecimal freqEfe) {
        this.freqEfe = freqEfe;
    }

    public BigDecimal getFreqEBand() {
        return freqEBand;
    }

    public void setFreqEBand(BigDecimal freqEBand) {
        this.freqEBand = freqEBand;
    }

    public BigDecimal getFreqRfb() {
        return freqRfb;
    }

    public void setFreqRfb(BigDecimal freqRfb) {
        this.freqRfb = freqRfb;
    }

    public BigDecimal getFreqRfe() {
        return freqRfe;
    }

    public void setFreqRfe(BigDecimal freqRfe) {
        this.freqRfe = freqRfe;
    }

    public BigDecimal getFreqRBand() {
        return freqRBand;
    }

    public void setFreqRBand(BigDecimal freqRBand) {
        this.freqRBand = freqRBand;
    }

    public String getFreqMod() {
        return freqMod;
    }

    public void setFreqMod(String freqMod) {
        this.freqMod = freqMod == null ? null : freqMod.trim();
    }

    public String getFreqMb() {
        return freqMb;
    }

    public void setFreqMb(String freqMb) {
        this.freqMb = freqMb == null ? null : freqMb.trim();
    }

    public String getFreqCode() {
        return freqCode;
    }

    public void setFreqCode(String freqCode) {
        this.freqCode = freqCode == null ? null : freqCode.trim();
    }
}