package com.rx.rmip.corebiz.service.modules.station.techdata.model;

import java.math.BigDecimal;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
@MyBatisDao
public class RSBTAntFeedT {
    private String guid;

    private String atAntNo;//天线序号

    private BigDecimal atSeB;//射线仰角范围起

    private BigDecimal atSeE;//射线仰角范围止

    private BigDecimal atAngB;//方位角范围起

    private BigDecimal atAngE;//方位角范围止

    private BigDecimal atRnt;//接收系统噪声温度

    private BigDecimal atBwid;//波束宽度

    private BigDecimal atLel;//第一旁瓣电平

    private BigDecimal atSspeed;//扫描速度

    private String atCcode;//扇区号

    private BigDecimal at3dbe;//3dB角宽(发)

    private BigDecimal at3dbr;//3dB角宽(收)

    private BigDecimal atRang;//收倾角

    private BigDecimal atEang;//发倾角

    private String atCsgn;//扇区标识码

    private String atUpdn;//直放站上行/下行

    private Short atSum;//天线数量

    private String atQua;//接收系统品质

    private String atUnitType;//天线增益单位

    private String atHHpic;//水平方向图

    private String atHVpic;//垂直方向图

    private BigDecimal atAntUpang;//天线仰角

    public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid == null ? null : guid.trim();
    }

    public String getAtAntNo() {
        return atAntNo;
    }

    public void setAtAntNo(String atAntNo) {
        this.atAntNo = atAntNo == null ? null : atAntNo.trim();
    }

    public BigDecimal getAtSeB() {
        return atSeB;
    }

    public void setAtSeB(BigDecimal atSeB) {
        this.atSeB = atSeB;
    }

    public BigDecimal getAtSeE() {
        return atSeE;
    }

    public void setAtSeE(BigDecimal atSeE) {
        this.atSeE = atSeE;
    }

    public BigDecimal getAtAngB() {
        return atAngB;
    }

    public void setAtAngB(BigDecimal atAngB) {
        this.atAngB = atAngB;
    }

    public BigDecimal getAtAngE() {
        return atAngE;
    }

    public void setAtAngE(BigDecimal atAngE) {
        this.atAngE = atAngE;
    }

    public BigDecimal getAtRnt() {
        return atRnt;
    }

    public void setAtRnt(BigDecimal atRnt) {
        this.atRnt = atRnt;
    }

    public BigDecimal getAtBwid() {
        return atBwid;
    }

    public void setAtBwid(BigDecimal atBwid) {
        this.atBwid = atBwid;
    }

    public BigDecimal getAtLel() {
        return atLel;
    }

    public void setAtLel(BigDecimal atLel) {
        this.atLel = atLel;
    }

    public BigDecimal getAtSspeed() {
        return atSspeed;
    }

    public void setAtSspeed(BigDecimal atSspeed) {
        this.atSspeed = atSspeed;
    }

    public String getAtCcode() {
        return atCcode;
    }

    public void setAtCcode(String atCcode) {
        this.atCcode = atCcode == null ? null : atCcode.trim();
    }

    public BigDecimal getAt3dbe() {
        return at3dbe;
    }

    public void setAt3dbe(BigDecimal at3dbe) {
        this.at3dbe = at3dbe;
    }

    public BigDecimal getAt3dbr() {
        return at3dbr;
    }

    public void setAt3dbr(BigDecimal at3dbr) {
        this.at3dbr = at3dbr;
    }

    public BigDecimal getAtRang() {
        return atRang;
    }

    public void setAtRang(BigDecimal atRang) {
        this.atRang = atRang;
    }

    public BigDecimal getAtEang() {
        return atEang;
    }

    public void setAtEang(BigDecimal atEang) {
        this.atEang = atEang;
    }

    public String getAtCsgn() {
        return atCsgn;
    }

    public void setAtCsgn(String atCsgn) {
        this.atCsgn = atCsgn == null ? null : atCsgn.trim();
    }

    public String getAtUpdn() {
        return atUpdn;
    }

    public void setAtUpdn(String atUpdn) {
        this.atUpdn = atUpdn == null ? null : atUpdn.trim();
    }

    public Short getAtSum() {
        return atSum;
    }

    public void setAtSum(Short atSum) {
        this.atSum = atSum;
    }

    public String getAtQua() {
        return atQua;
    }

    public void setAtQua(String atQua) {
        this.atQua = atQua == null ? null : atQua.trim();
    }

    public String getAtUnitType() {
        return atUnitType;
    }

    public void setAtUnitType(String atUnitType) {
        this.atUnitType = atUnitType == null ? null : atUnitType.trim();
    }

    public String getAtHHpic() {
        return atHHpic;
    }

    public void setAtHHpic(String atHHpic) {
        this.atHHpic = atHHpic == null ? null : atHHpic.trim();
    }

    public String getAtHVpic() {
        return atHVpic;
    }

    public void setAtHVpic(String atHVpic) {
        this.atHVpic = atHVpic == null ? null : atHVpic.trim();
    }

    public BigDecimal getAtAntUpang() {
        return atAntUpang;
    }

    public void setAtAntUpang(BigDecimal atAntUpang) {
        this.atAntUpang = atAntUpang;
    }
}