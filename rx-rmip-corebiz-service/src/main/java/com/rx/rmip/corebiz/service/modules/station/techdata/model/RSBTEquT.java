package com.rx.rmip.corebiz.service.modules.station.techdata.model;

import java.math.BigDecimal;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
@MyBatisDao
public class RSBTEquT {
    private String guid;

    private String etEquNo;//设备序号

    private String etAfType;//是否自动选频

    private String etPowU;//功率单位

    private String etEquCl;//呼号

    private BigDecimal etEquTl;//门限电平(dBm)

    private BigDecimal etEquRnq;//噪声系数(dB)

    private String etEquTypeId;//设备类型

    private String etEquName;//设备名称

    private String etEquCode;//型式认可代码

    private String etEquEsgn;//发射标识

    private String etEquEpos;//设备电台安装位置

    private String etEquAtype;//设备天线类型

    private String etEquApos;//天线安装位置

    private Integer etEquSum;//设备数量

    private String etEquEuse;//电池有效期

    private BigDecimal etEquFntval;//频率间隔

    private BigDecimal etEquPup;//脉冲上升时间

    private BigDecimal etEquPdn;//脉冲下降时间

    private BigDecimal etEquChrip;//Chirp宽度

    private BigDecimal etEquPwid1;//脉冲宽度1

    private BigDecimal etEquPwid2;//脉冲宽度2

    private BigDecimal etEquPr;//脉冲重复周期

    private BigDecimal etEquPf;//脉冲重复频率

    private BigDecimal etEquRf;//应答器发射频率

    private BigDecimal etEquRfBand;//应答器发射的带宽

    private BigDecimal etEquSen;//接收机灵敏度

    private String etEquSenu;//接收机灵敏度单位

    private String etEquSenerr;//接收机灵敏度对应的误码率指标

    private BigDecimal etEquRwid;//接收机中频带宽

    private String etEquMt;//调制方式

    private String etEquCcode;//扇区号

    private String etEquUpu;//上行发射功率/信道的单位

    private String etEquDnu;//下行发射功率/信道的单位

    private String etEquType;//设备类别

    private String etEquUse;//使用方式

    private BigDecimal etEquPowMax;//峰值功率

    private BigDecimal etEquPowAvg;//平均功率

    private BigDecimal etEquUpow;//上行发射功率

    private BigDecimal etEquDpow;//下行发射功率

    public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid == null ? null : guid.trim();
    }

    public String getEtEquNo() {
        return etEquNo;
    }

    public void setEtEquNo(String etEquNo) {
        this.etEquNo = etEquNo == null ? null : etEquNo.trim();
    }

    public String getEtAfType() {
        return etAfType;
    }

    public void setEtAfType(String etAfType) {
        this.etAfType = etAfType == null ? null : etAfType.trim();
    }

    public String getEtPowU() {
        return etPowU;
    }

    public void setEtPowU(String etPowU) {
        this.etPowU = etPowU == null ? null : etPowU.trim();
    }

    public String getEtEquCl() {
        return etEquCl;
    }

    public void setEtEquCl(String etEquCl) {
        this.etEquCl = etEquCl == null ? null : etEquCl.trim();
    }

    public BigDecimal getEtEquTl() {
        return etEquTl;
    }

    public void setEtEquTl(BigDecimal etEquTl) {
        this.etEquTl = etEquTl;
    }

    public BigDecimal getEtEquRnq() {
        return etEquRnq;
    }

    public void setEtEquRnq(BigDecimal etEquRnq) {
        this.etEquRnq = etEquRnq;
    }

    public String getEtEquTypeId() {
        return etEquTypeId;
    }

    public void setEtEquTypeId(String etEquTypeId) {
        this.etEquTypeId = etEquTypeId == null ? null : etEquTypeId.trim();
    }

    public String getEtEquName() {
        return etEquName;
    }

    public void setEtEquName(String etEquName) {
        this.etEquName = etEquName == null ? null : etEquName.trim();
    }

    public String getEtEquCode() {
        return etEquCode;
    }

    public void setEtEquCode(String etEquCode) {
        this.etEquCode = etEquCode == null ? null : etEquCode.trim();
    }

    public String getEtEquEsgn() {
        return etEquEsgn;
    }

    public void setEtEquEsgn(String etEquEsgn) {
        this.etEquEsgn = etEquEsgn == null ? null : etEquEsgn.trim();
    }

    public String getEtEquEpos() {
        return etEquEpos;
    }

    public void setEtEquEpos(String etEquEpos) {
        this.etEquEpos = etEquEpos == null ? null : etEquEpos.trim();
    }

    public String getEtEquAtype() {
        return etEquAtype;
    }

    public void setEtEquAtype(String etEquAtype) {
        this.etEquAtype = etEquAtype == null ? null : etEquAtype.trim();
    }

    public String getEtEquApos() {
        return etEquApos;
    }

    public void setEtEquApos(String etEquApos) {
        this.etEquApos = etEquApos == null ? null : etEquApos.trim();
    }

    public Integer getEtEquSum() {
        return etEquSum;
    }

    public void setEtEquSum(Integer etEquSum) {
        this.etEquSum = etEquSum;
    }

    public String getEtEquEuse() {
        return etEquEuse;
    }

    public void setEtEquEuse(String etEquEuse) {
        this.etEquEuse = etEquEuse == null ? null : etEquEuse.trim();
    }

    public BigDecimal getEtEquFntval() {
        return etEquFntval;
    }

    public void setEtEquFntval(BigDecimal etEquFntval) {
        this.etEquFntval = etEquFntval;
    }

    public BigDecimal getEtEquPup() {
        return etEquPup;
    }

    public void setEtEquPup(BigDecimal etEquPup) {
        this.etEquPup = etEquPup;
    }

    public BigDecimal getEtEquPdn() {
        return etEquPdn;
    }

    public void setEtEquPdn(BigDecimal etEquPdn) {
        this.etEquPdn = etEquPdn;
    }

    public BigDecimal getEtEquChrip() {
        return etEquChrip;
    }

    public void setEtEquChrip(BigDecimal etEquChrip) {
        this.etEquChrip = etEquChrip;
    }

    public BigDecimal getEtEquPwid1() {
        return etEquPwid1;
    }

    public void setEtEquPwid1(BigDecimal etEquPwid1) {
        this.etEquPwid1 = etEquPwid1;
    }

    public BigDecimal getEtEquPwid2() {
        return etEquPwid2;
    }

    public void setEtEquPwid2(BigDecimal etEquPwid2) {
        this.etEquPwid2 = etEquPwid2;
    }

    public BigDecimal getEtEquPr() {
        return etEquPr;
    }

    public void setEtEquPr(BigDecimal etEquPr) {
        this.etEquPr = etEquPr;
    }

    public BigDecimal getEtEquPf() {
        return etEquPf;
    }

    public void setEtEquPf(BigDecimal etEquPf) {
        this.etEquPf = etEquPf;
    }

    public BigDecimal getEtEquRf() {
        return etEquRf;
    }

    public void setEtEquRf(BigDecimal etEquRf) {
        this.etEquRf = etEquRf;
    }

    public BigDecimal getEtEquRfBand() {
        return etEquRfBand;
    }

    public void setEtEquRfBand(BigDecimal etEquRfBand) {
        this.etEquRfBand = etEquRfBand;
    }

    public BigDecimal getEtEquSen() {
        return etEquSen;
    }

    public void setEtEquSen(BigDecimal etEquSen) {
        this.etEquSen = etEquSen;
    }

    public String getEtEquSenu() {
        return etEquSenu;
    }

    public void setEtEquSenu(String etEquSenu) {
        this.etEquSenu = etEquSenu == null ? null : etEquSenu.trim();
    }

    public String getEtEquSenerr() {
        return etEquSenerr;
    }

    public void setEtEquSenerr(String etEquSenerr) {
        this.etEquSenerr = etEquSenerr == null ? null : etEquSenerr.trim();
    }

    public BigDecimal getEtEquRwid() {
        return etEquRwid;
    }

    public void setEtEquRwid(BigDecimal etEquRwid) {
        this.etEquRwid = etEquRwid;
    }

    public String getEtEquMt() {
        return etEquMt;
    }

    public void setEtEquMt(String etEquMt) {
        this.etEquMt = etEquMt == null ? null : etEquMt.trim();
    }

    public String getEtEquCcode() {
        return etEquCcode;
    }

    public void setEtEquCcode(String etEquCcode) {
        this.etEquCcode = etEquCcode == null ? null : etEquCcode.trim();
    }

    public String getEtEquUpu() {
        return etEquUpu;
    }

    public void setEtEquUpu(String etEquUpu) {
        this.etEquUpu = etEquUpu == null ? null : etEquUpu.trim();
    }

    public String getEtEquDnu() {
        return etEquDnu;
    }

    public void setEtEquDnu(String etEquDnu) {
        this.etEquDnu = etEquDnu == null ? null : etEquDnu.trim();
    }

    public String getEtEquType() {
        return etEquType;
    }

    public void setEtEquType(String etEquType) {
        this.etEquType = etEquType == null ? null : etEquType.trim();
    }

    public String getEtEquUse() {
        return etEquUse;
    }

    public void setEtEquUse(String etEquUse) {
        this.etEquUse = etEquUse == null ? null : etEquUse.trim();
    }

    public BigDecimal getEtEquPowMax() {
        return etEquPowMax;
    }

    public void setEtEquPowMax(BigDecimal etEquPowMax) {
        this.etEquPowMax = etEquPowMax;
    }

    public BigDecimal getEtEquPowAvg() {
        return etEquPowAvg;
    }

    public void setEtEquPowAvg(BigDecimal etEquPowAvg) {
        this.etEquPowAvg = etEquPowAvg;
    }

    public BigDecimal getEtEquUpow() {
        return etEquUpow;
    }

    public void setEtEquUpow(BigDecimal etEquUpow) {
        this.etEquUpow = etEquUpow;
    }

    public BigDecimal getEtEquDpow() {
        return etEquDpow;
    }

    public void setEtEquDpow(BigDecimal etEquDpow) {
        this.etEquDpow = etEquDpow;
    }
}