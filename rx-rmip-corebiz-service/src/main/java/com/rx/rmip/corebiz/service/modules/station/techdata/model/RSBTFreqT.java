package com.rx.rmip.corebiz.service.modules.station.techdata.model;

import java.math.BigDecimal;
import java.util.Date;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
@MyBatisDao
public class RSBTFreqT {
    private String guid;

    private String ftFreqNo;//频率序号

    private Date ftFreqTimeb;//工作时间起

    private Date ftFreqTimee;//工作时间止

    private String ftFreqInfoType;//发送信息类型

    private String ftFreqHcl;//呼号

    private String ftFreqType;//波道间隔/信道带宽

    private String ftFreqMc;//调制特性类型

    private String ftFreqMc1;//调制特性1

    private String ftFreqMc2;//调制特性2

    private String ftFreqMc3;//调制特性3

    private String ftFreqCcode;//扇区号

    private String ftFreqCsgn;//扇区标识码

    private String ftFreqDupdn;//直放站的上行/下行标识

    private String ftFreqUnitType;//频率单位

    private String ftFreqFep;//发射极化方式

    private String ftFreqFrp;//接收极化方式

    private BigDecimal ftFreqEpow;//发射功率W

    private String ftFreqPowflag;//功率标识

    private BigDecimal ftFreqEirp;//EIRP值

    private BigDecimal ftFreqPowMax;//峰值功率

    private BigDecimal ftFreqPowAvg;//平均功率

    public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid == null ? null : guid.trim();
    }

    public String getFtFreqNo() {
        return ftFreqNo;
    }

    public void setFtFreqNo(String ftFreqNo) {
        this.ftFreqNo = ftFreqNo == null ? null : ftFreqNo.trim();
    }

    public Date getFtFreqTimeb() {
        return ftFreqTimeb;
    }

    public void setFtFreqTimeb(Date ftFreqTimeb) {
        this.ftFreqTimeb = ftFreqTimeb;
    }

    public Date getFtFreqTimee() {
        return ftFreqTimee;
    }

    public void setFtFreqTimee(Date ftFreqTimee) {
        this.ftFreqTimee = ftFreqTimee;
    }

    public String getFtFreqInfoType() {
        return ftFreqInfoType;
    }

    public void setFtFreqInfoType(String ftFreqInfoType) {
        this.ftFreqInfoType = ftFreqInfoType == null ? null : ftFreqInfoType.trim();
    }

    public String getFtFreqHcl() {
        return ftFreqHcl;
    }

    public void setFtFreqHcl(String ftFreqHcl) {
        this.ftFreqHcl = ftFreqHcl == null ? null : ftFreqHcl.trim();
    }

    public String getFtFreqType() {
        return ftFreqType;
    }

    public void setFtFreqType(String ftFreqType) {
        this.ftFreqType = ftFreqType == null ? null : ftFreqType.trim();
    }

    public String getFtFreqMc() {
        return ftFreqMc;
    }

    public void setFtFreqMc(String ftFreqMc) {
        this.ftFreqMc = ftFreqMc == null ? null : ftFreqMc.trim();
    }

    public String getFtFreqMc1() {
        return ftFreqMc1;
    }

    public void setFtFreqMc1(String ftFreqMc1) {
        this.ftFreqMc1 = ftFreqMc1 == null ? null : ftFreqMc1.trim();
    }

    public String getFtFreqMc2() {
        return ftFreqMc2;
    }

    public void setFtFreqMc2(String ftFreqMc2) {
        this.ftFreqMc2 = ftFreqMc2 == null ? null : ftFreqMc2.trim();
    }

    public String getFtFreqMc3() {
        return ftFreqMc3;
    }

    public void setFtFreqMc3(String ftFreqMc3) {
        this.ftFreqMc3 = ftFreqMc3 == null ? null : ftFreqMc3.trim();
    }

    public String getFtFreqCcode() {
        return ftFreqCcode;
    }

    public void setFtFreqCcode(String ftFreqCcode) {
        this.ftFreqCcode = ftFreqCcode == null ? null : ftFreqCcode.trim();
    }

    public String getFtFreqCsgn() {
        return ftFreqCsgn;
    }

    public void setFtFreqCsgn(String ftFreqCsgn) {
        this.ftFreqCsgn = ftFreqCsgn == null ? null : ftFreqCsgn.trim();
    }

    public String getFtFreqDupdn() {
        return ftFreqDupdn;
    }

    public void setFtFreqDupdn(String ftFreqDupdn) {
        this.ftFreqDupdn = ftFreqDupdn == null ? null : ftFreqDupdn.trim();
    }

    public String getFtFreqUnitType() {
        return ftFreqUnitType;
    }

    public void setFtFreqUnitType(String ftFreqUnitType) {
        this.ftFreqUnitType = ftFreqUnitType == null ? null : ftFreqUnitType.trim();
    }

    public String getFtFreqFep() {
        return ftFreqFep;
    }

    public void setFtFreqFep(String ftFreqFep) {
        this.ftFreqFep = ftFreqFep == null ? null : ftFreqFep.trim();
    }

    public String getFtFreqFrp() {
        return ftFreqFrp;
    }

    public void setFtFreqFrp(String ftFreqFrp) {
        this.ftFreqFrp = ftFreqFrp == null ? null : ftFreqFrp.trim();
    }

    public BigDecimal getFtFreqEpow() {
        return ftFreqEpow;
    }

    public void setFtFreqEpow(BigDecimal ftFreqEpow) {
        this.ftFreqEpow = ftFreqEpow;
    }

    public String getFtFreqPowflag() {
        return ftFreqPowflag;
    }

    public void setFtFreqPowflag(String ftFreqPowflag) {
        this.ftFreqPowflag = ftFreqPowflag == null ? null : ftFreqPowflag.trim();
    }

    public BigDecimal getFtFreqEirp() {
        return ftFreqEirp;
    }

    public void setFtFreqEirp(BigDecimal ftFreqEirp) {
        this.ftFreqEirp = ftFreqEirp;
    }

    public BigDecimal getFtFreqPowMax() {
        return ftFreqPowMax;
    }

    public void setFtFreqPowMax(BigDecimal ftFreqPowMax) {
        this.ftFreqPowMax = ftFreqPowMax;
    }

    public BigDecimal getFtFreqPowAvg() {
        return ftFreqPowAvg;
    }

    public void setFtFreqPowAvg(BigDecimal ftFreqPowAvg) {
        this.ftFreqPowAvg = ftFreqPowAvg;
    }
}