package com.rx.rmip.corebiz.service.modules.station.techdata.model;

import java.math.BigDecimal;
import java.util.Date;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
@MyBatisDao
public class RSBTStation {
    private String guid;

    private String netGuid;

    private String orgCode;//无线电管理机构组织机构 代码

    private String appCode;//无线电台(站)申请表编号

    private String statAppType;//技术资料申报表类型

    private String statTdi;//技术资料申报表编号

    private String statName;//无线电台站名称

    private String statAddr;//无线电台站地址

    private String statAreaCode;//无线电台站所在地地区编码

    private String statType;//台站类别

    private String statWork;//工作方式

    private String statStatus;//台站状态

    private Integer statEquSum;//(台站总)设备数量

    private BigDecimal statLg;//台站经度(西经为负数)

    private BigDecimal statLa;//台站纬度(南纬为负数)

    private BigDecimal statAt;//海拔高度

    private Date statDateStart;//启用日期

    private String memo;//协调主管部门；国际协调和登记资料代码或名称


    public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid == null ? null : guid.trim();
    }

    public String getNetGuid() {
        return netGuid;
    }

    public void setNetGuid(String netGuid) {
        this.netGuid = netGuid == null ? null : netGuid.trim();
    }

    public String getOrgCode() {
        return orgCode;
    }

    public void setOrgCode(String orgCode) {
        this.orgCode = orgCode == null ? null : orgCode.trim();
    }

    public String getAppCode() {
        return appCode;
    }

    public void setAppCode(String appCode) {
        this.appCode = appCode == null ? null : appCode.trim();
    }

    public String getStatAppType() {
        return statAppType;
    }

    public void setStatAppType(String statAppType) {
        this.statAppType = statAppType == null ? null : statAppType.trim();
    }

    public String getStatTdi() {
        return statTdi;
    }

    public void setStatTdi(String statTdi) {
        this.statTdi = statTdi == null ? null : statTdi.trim();
    }

    public String getStatName() {
        return statName;
    }

    public void setStatName(String statName) {
        this.statName = statName == null ? null : statName.trim();
    }

    public String getStatAddr() {
        return statAddr;
    }

    public void setStatAddr(String statAddr) {
        this.statAddr = statAddr == null ? null : statAddr.trim();
    }

    public String getStatAreaCode() {
        return statAreaCode;
    }

    public void setStatAreaCode(String statAreaCode) {
        this.statAreaCode = statAreaCode == null ? null : statAreaCode.trim();
    }

    public String getStatType() {
        return statType;
    }

    public void setStatType(String statType) {
        this.statType = statType == null ? null : statType.trim();
    }

    public String getStatWork() {
        return statWork;
    }

    public void setStatWork(String statWork) {
        this.statWork = statWork == null ? null : statWork.trim();
    }

    public String getStatStatus() {
        return statStatus;
    }

    public void setStatStatus(String statStatus) {
        this.statStatus = statStatus == null ? null : statStatus.trim();
    }

    public Integer getStatEquSum() {
        return statEquSum;
    }

    public void setStatEquSum(Integer statEquSum) {
        this.statEquSum = statEquSum;
    }

    public BigDecimal getStatLg() {
        return statLg;
    }

    public void setStatLg(BigDecimal statLg) {
        this.statLg = statLg;
    }

    public BigDecimal getStatLa() {
        return statLa;
    }

    public void setStatLa(BigDecimal statLa) {
        this.statLa = statLa;
    }

    public BigDecimal getStatAt() {
        return statAt;
    }

    public void setStatAt(BigDecimal statAt) {
        this.statAt = statAt;
    }

    public Date getStatDateStart() {
        return statDateStart;
    }

    public void setStatDateStart(Date statDateStart) {
        this.statDateStart = statDateStart;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo == null ? null : memo.trim();
    }
}