package com.rx.rmip.corebiz.service.modules.station.techdata.model;

import java.math.BigDecimal;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
@MyBatisDao
public class RSBTAntFeed {
    private String guid;

    private String stationGuid;

    private String antWorkType;//工作方式

    private String antPole;//极化方式

    private String antRpole;//收极化方式

    private String antEpole;//发极化方式

    private String antType;//天线类型

    private String antModel;//天线型号

    private String antMenu;//天线生产厂家

    private BigDecimal antHight;//天线距地面高度

    private BigDecimal antGain;//天线增益

    private BigDecimal antEgain;//天线发增益

    private BigDecimal antRgain;//天线收增益

    private BigDecimal antAngle;//最大辐射方位角

    private String antSize;//天线尺寸

    private String feedMenu;//馈线生产厂家

    private String feedModel;//馈线型号

    private BigDecimal feedLength;//馈线长度

    private BigDecimal feedLose;//馈线系统总损耗

    private BigDecimal antCode;//ADBMS_PK_ANTENO(天线序号)
    private BigDecimal feedCode;//ADBMS_PK_FEEDLINENO(馈线序号)

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

    public String getAntWorkType() {
        return antWorkType;
    }

    public void setAntWorkType(String antWorkType) {
        this.antWorkType = antWorkType == null ? null : antWorkType.trim();
    }

    public String getAntPole() {
        return antPole;
    }

    public void setAntPole(String antPole) {
        this.antPole = antPole == null ? null : antPole.trim();
    }

    public String getAntRpole() {
        return antRpole;
    }

    public void setAntRpole(String antRpole) {
        this.antRpole = antRpole == null ? null : antRpole.trim();
    }

    public String getAntEpole() {
        return antEpole;
    }

    public void setAntEpole(String antEpole) {
        this.antEpole = antEpole == null ? null : antEpole.trim();
    }

    public String getAntType() {
        return antType;
    }

    public void setAntType(String antType) {
        this.antType = antType == null ? null : antType.trim();
    }

    public String getAntModel() {
        return antModel;
    }

    public void setAntModel(String antModel) {
        this.antModel = antModel == null ? null : antModel.trim();
    }

    public String getAntMenu() {
        return antMenu;
    }

    public void setAntMenu(String antMenu) {
        this.antMenu = antMenu == null ? null : antMenu.trim();
    }

    public BigDecimal getAntHight() {
        return antHight;
    }

    public void setAntHight(BigDecimal antHight) {
        this.antHight = antHight;
    }

    public BigDecimal getAntGain() {
        return antGain;
    }

    public void setAntGain(BigDecimal antGain) {
        this.antGain = antGain;
    }

    public BigDecimal getAntEgain() {
        return antEgain;
    }

    public void setAntEgain(BigDecimal antEgain) {
        this.antEgain = antEgain;
    }

    public BigDecimal getAntRgain() {
        return antRgain;
    }

    public void setAntRgain(BigDecimal antRgain) {
        this.antRgain = antRgain;
    }

    public BigDecimal getAntAngle() {
        return antAngle;
    }

    public void setAntAngle(BigDecimal antAngle) {
        this.antAngle = antAngle;
    }

    public String getAntSize() {
        return antSize;
    }

    public void setAntSize(String antSize) {
        this.antSize = antSize == null ? null : antSize.trim();
    }

    public String getFeedMenu() {
        return feedMenu;
    }

    public void setFeedMenu(String feedMenu) {
        this.feedMenu = feedMenu == null ? null : feedMenu.trim();
    }

    public String getFeedModel() {
        return feedModel;
    }

    public void setFeedModel(String feedModel) {
        this.feedModel = feedModel == null ? null : feedModel.trim();
    }

    public BigDecimal getFeedLength() {
        return feedLength;
    }

    public void setFeedLength(BigDecimal feedLength) {
        this.feedLength = feedLength;
    }

    public BigDecimal getFeedLose() {
        return feedLose;
    }

    public void setFeedLose(BigDecimal feedLose) {
        this.feedLose = feedLose;
    }

    public BigDecimal getAntCode() {
        return antCode;
    }

    public void setAntCode(BigDecimal antCode) {
        this.antCode = antCode;
    }

    public BigDecimal getFeedCode() {
        return feedCode;
    }

    public void setFeedCode(BigDecimal feedCode) {
        this.feedCode = feedCode;
    }
}