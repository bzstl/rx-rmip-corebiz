package com.rx.rmip.corebiz.service.modules.station.techdata.model;

import java.math.BigDecimal;
import java.util.Date;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
@MyBatisDao
public class RSBTStationT {
    private String guid;

    private Date stTimeB;//工作时间起

    private Date stTimeE;//工作时间止

    private String stLmmtr;//是否机车制式电台

    private String stUserArea;//使用区域

    private String stTfCode;//站代号

    private String stTfTransCaPu;//传输容量单位

    private BigDecimal stTfTransCaP;//传输容量值

    private String stENetCode;//网络编号

    private String stEMultiAddr;//多址方式

    private String stEComArea;//通信范围

    private String stPosType;//位置类型

    private String stEPos;//位置类型(值)

    private String stESat;//空间电台(星座)名称

    private String stELg;//标称轨道经度

    private String stBSgn;//台标

    private String stBLevel;//台站级别

    private String stBBm;//广播制式

    private String stBEdu;//是否教育台

    private String stBIc;//是否差转台

    private String stBCoverArea;//覆盖区域

    private String stShipType;//船舶种类

    private String stCallSign;//呼号

    private String stSMmsi;//MMSI号

    private String stSCs;//船舶登记号

    private String stShipName;//船舶名称

    private String stSPn;//船籍港名

    private String stSAaic;//帐务结算机构代码

    private BigDecimal stST;//总吨位

    private BigDecimal stSP;//总功率

    private String stAModel;//航空器型号

    private String stAType;//航空器类型

    private String stACall;//选呼或报呼

    private String stACallOi;//呼号或其它标识

    private String stASgn;//航空器识别码

    private BigDecimal stASt;//最大起飞重量

    private String stAPiloting;//是否按地标飞行

    private String stANrm;//国籍和注册号码

    private String stRWamin;//工作方位角最小值

    private String stRWamax;//工作方位角最大值

    private String stREmin;//俯仰角最小值

    private String stREmax;//俯仰角最大值

    private String stCCode;//基站编号(唯一)

    private Short stCSum;//扇区数量

    private BigDecimal stServR;//服务半径

    private String stDTecType;//技术体制

    private String stDType;//直放站类型

    private String stMeSatName;//卫星移动通信系统名称

    private String stMeSta1;//关口站名称1

    private String stMeSta2;//关口站名称2

    private String stMeSta3;//关口站名称3

    private String stMeStype;//星座/卫星

    private String stMeName1;//空间电台(星座)名称1

    private String stMeName2;//空间电台(星座)名称2

    private BigDecimal stMeLg1;//标称轨道经度1

    private BigDecimal stMeLg2;//标称轨道经度2

    private BigDecimal stMeFband;//使用总带宽

    private String stBType1;//广播电台台站类别1

    private String stBType2;//广播电台台站类别2

    public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid == null ? null : guid.trim();
    }

    public Date getStTimeB() {
        return stTimeB;
    }

    public void setStTimeB(Date stTimeB) {
        this.stTimeB = stTimeB;
    }

    public Date getStTimeE() {
        return stTimeE;
    }

    public void setStTimeE(Date stTimeE) {
        this.stTimeE = stTimeE;
    }

    public String getStLmmtr() {
        return stLmmtr;
    }

    public void setStLmmtr(String stLmmtr) {
        this.stLmmtr = stLmmtr == null ? null : stLmmtr.trim();
    }

    public String getStUserArea() {
        return stUserArea;
    }

    public void setStUserArea(String stUserArea) {
        this.stUserArea = stUserArea == null ? null : stUserArea.trim();
    }

    public String getStTfCode() {
        return stTfCode;
    }

    public void setStTfCode(String stTfCode) {
        this.stTfCode = stTfCode == null ? null : stTfCode.trim();
    }

    public String getStTfTransCaPu() {
        return stTfTransCaPu;
    }

    public void setStTfTransCaPu(String stTfTransCaPu) {
        this.stTfTransCaPu = stTfTransCaPu == null ? null : stTfTransCaPu.trim();
    }

    public BigDecimal getStTfTransCaP() {
        return stTfTransCaP;
    }

    public void setStTfTransCaP(BigDecimal stTfTransCaP) {
        this.stTfTransCaP = stTfTransCaP;
    }

    public String getStENetCode() {
        return stENetCode;
    }

    public void setStENetCode(String stENetCode) {
        this.stENetCode = stENetCode == null ? null : stENetCode.trim();
    }

    public String getStEMultiAddr() {
        return stEMultiAddr;
    }

    public void setStEMultiAddr(String stEMultiAddr) {
        this.stEMultiAddr = stEMultiAddr == null ? null : stEMultiAddr.trim();
    }

    public String getStEComArea() {
        return stEComArea;
    }

    public void setStEComArea(String stEComArea) {
        this.stEComArea = stEComArea == null ? null : stEComArea.trim();
    }

    public String getStPosType() {
        return stPosType;
    }

    public void setStPosType(String stPosType) {
        this.stPosType = stPosType == null ? null : stPosType.trim();
    }

    public String getStEPos() {
        return stEPos;
    }

    public void setStEPos(String stEPos) {
        this.stEPos = stEPos == null ? null : stEPos.trim();
    }

    public String getStESat() {
        return stESat;
    }

    public void setStESat(String stESat) {
        this.stESat = stESat == null ? null : stESat.trim();
    }

    public String getStELg() {
        return stELg;
    }

    public void setStELg(String stELg) {
        this.stELg = stELg == null ? null : stELg.trim();
    }

    public String getStBSgn() {
        return stBSgn;
    }

    public void setStBSgn(String stBSgn) {
        this.stBSgn = stBSgn == null ? null : stBSgn.trim();
    }

    public String getStBLevel() {
        return stBLevel;
    }

    public void setStBLevel(String stBLevel) {
        this.stBLevel = stBLevel == null ? null : stBLevel.trim();
    }

    public String getStBBm() {
        return stBBm;
    }

    public void setStBBm(String stBBm) {
        this.stBBm = stBBm == null ? null : stBBm.trim();
    }

    public String getStBEdu() {
        return stBEdu;
    }

    public void setStBEdu(String stBEdu) {
        this.stBEdu = stBEdu == null ? null : stBEdu.trim();
    }

    public String getStBIc() {
        return stBIc;
    }

    public void setStBIc(String stBIc) {
        this.stBIc = stBIc == null ? null : stBIc.trim();
    }

    public String getStBCoverArea() {
        return stBCoverArea;
    }

    public void setStBCoverArea(String stBCoverArea) {
        this.stBCoverArea = stBCoverArea == null ? null : stBCoverArea.trim();
    }

    public String getStShipType() {
        return stShipType;
    }

    public void setStShipType(String stShipType) {
        this.stShipType = stShipType == null ? null : stShipType.trim();
    }

    public String getStCallSign() {
        return stCallSign;
    }

    public void setStCallSign(String stCallSign) {
        this.stCallSign = stCallSign == null ? null : stCallSign.trim();
    }

    public String getStSMmsi() {
        return stSMmsi;
    }

    public void setStSMmsi(String stSMmsi) {
        this.stSMmsi = stSMmsi == null ? null : stSMmsi.trim();
    }

    public String getStSCs() {
        return stSCs;
    }

    public void setStSCs(String stSCs) {
        this.stSCs = stSCs == null ? null : stSCs.trim();
    }

    public String getStShipName() {
        return stShipName;
    }

    public void setStShipName(String stShipName) {
        this.stShipName = stShipName == null ? null : stShipName.trim();
    }

    public String getStSPn() {
        return stSPn;
    }

    public void setStSPn(String stSPn) {
        this.stSPn = stSPn == null ? null : stSPn.trim();
    }

    public String getStSAaic() {
        return stSAaic;
    }

    public void setStSAaic(String stSAaic) {
        this.stSAaic = stSAaic == null ? null : stSAaic.trim();
    }

    public BigDecimal getStST() {
        return stST;
    }

    public void setStST(BigDecimal stST) {
        this.stST = stST;
    }

    public BigDecimal getStSP() {
        return stSP;
    }

    public void setStSP(BigDecimal stSP) {
        this.stSP = stSP;
    }

    public String getStAModel() {
        return stAModel;
    }

    public void setStAModel(String stAModel) {
        this.stAModel = stAModel == null ? null : stAModel.trim();
    }

    public String getStAType() {
        return stAType;
    }

    public void setStAType(String stAType) {
        this.stAType = stAType == null ? null : stAType.trim();
    }

    public String getStACall() {
        return stACall;
    }

    public void setStACall(String stACall) {
        this.stACall = stACall == null ? null : stACall.trim();
    }

    public String getStACallOi() {
        return stACallOi;
    }

    public void setStACallOi(String stACallOi) {
        this.stACallOi = stACallOi == null ? null : stACallOi.trim();
    }

    public String getStASgn() {
        return stASgn;
    }

    public void setStASgn(String stASgn) {
        this.stASgn = stASgn == null ? null : stASgn.trim();
    }

    public BigDecimal getStASt() {
        return stASt;
    }

    public void setStASt(BigDecimal stASt) {
        this.stASt = stASt;
    }

    public String getStAPiloting() {
        return stAPiloting;
    }

    public void setStAPiloting(String stAPiloting) {
        this.stAPiloting = stAPiloting == null ? null : stAPiloting.trim();
    }

    public String getStANrm() {
        return stANrm;
    }

    public void setStANrm(String stANrm) {
        this.stANrm = stANrm == null ? null : stANrm.trim();
    }

    public String getStRWamin() {
        return stRWamin;
    }

    public void setStRWamin(String stRWamin) {
        this.stRWamin = stRWamin == null ? null : stRWamin.trim();
    }

    public String getStRWamax() {
        return stRWamax;
    }

    public void setStRWamax(String stRWamax) {
        this.stRWamax = stRWamax == null ? null : stRWamax.trim();
    }

    public String getStREmin() {
        return stREmin;
    }

    public void setStREmin(String stREmin) {
        this.stREmin = stREmin == null ? null : stREmin.trim();
    }

    public String getStREmax() {
        return stREmax;
    }

    public void setStREmax(String stREmax) {
        this.stREmax = stREmax == null ? null : stREmax.trim();
    }

    public String getStCCode() {
        return stCCode;
    }

    public void setStCCode(String stCCode) {
        this.stCCode = stCCode == null ? null : stCCode.trim();
    }

    public Short getStCSum() {
        return stCSum;
    }

    public void setStCSum(Short stCSum) {
        this.stCSum = stCSum;
    }

    public BigDecimal getStServR() {
        return stServR;
    }

    public void setStServR(BigDecimal stServR) {
        this.stServR = stServR;
    }

    public String getStDTecType() {
        return stDTecType;
    }

    public void setStDTecType(String stDTecType) {
        this.stDTecType = stDTecType == null ? null : stDTecType.trim();
    }

    public String getStDType() {
        return stDType;
    }

    public void setStDType(String stDType) {
        this.stDType = stDType == null ? null : stDType.trim();
    }

    public String getStMeSatName() {
        return stMeSatName;
    }

    public void setStMeSatName(String stMeSatName) {
        this.stMeSatName = stMeSatName == null ? null : stMeSatName.trim();
    }

    public String getStMeSta1() {
        return stMeSta1;
    }

    public void setStMeSta1(String stMeSta1) {
        this.stMeSta1 = stMeSta1 == null ? null : stMeSta1.trim();
    }

    public String getStMeSta2() {
        return stMeSta2;
    }

    public void setStMeSta2(String stMeSta2) {
        this.stMeSta2 = stMeSta2 == null ? null : stMeSta2.trim();
    }

    public String getStMeSta3() {
        return stMeSta3;
    }

    public void setStMeSta3(String stMeSta3) {
        this.stMeSta3 = stMeSta3 == null ? null : stMeSta3.trim();
    }

    public String getStMeStype() {
        return stMeStype;
    }

    public void setStMeStype(String stMeStype) {
        this.stMeStype = stMeStype == null ? null : stMeStype.trim();
    }

    public String getStMeName1() {
        return stMeName1;
    }

    public void setStMeName1(String stMeName1) {
        this.stMeName1 = stMeName1 == null ? null : stMeName1.trim();
    }

    public String getStMeName2() {
        return stMeName2;
    }

    public void setStMeName2(String stMeName2) {
        this.stMeName2 = stMeName2 == null ? null : stMeName2.trim();
    }

    public BigDecimal getStMeLg1() {
        return stMeLg1;
    }

    public void setStMeLg1(BigDecimal stMeLg1) {
        this.stMeLg1 = stMeLg1;
    }

    public BigDecimal getStMeLg2() {
        return stMeLg2;
    }

    public void setStMeLg2(BigDecimal stMeLg2) {
        this.stMeLg2 = stMeLg2;
    }

    public BigDecimal getStMeFband() {
        return stMeFband;
    }

    public void setStMeFband(BigDecimal stMeFband) {
        this.stMeFband = stMeFband;
    }

    public String getStBType1() {
        return stBType1;
    }

    public void setStBType1(String stBType1) {
        this.stBType1 = stBType1 == null ? null : stBType1.trim();
    }

    public String getStBType2() {
        return stBType2;
    }

    public void setStBType2(String stBType2) {
        this.stBType2 = stBType2 == null ? null : stBType2.trim();
    }
}