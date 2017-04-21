package com.rx.rmip.corebiz.service.modules.station.common.model;

import java.math.BigDecimal;

public class RSBTCodeDic {
    private BigDecimal co;

    private String cn;

    private String codeChiName;

    private String codeDataType;

    private String codeTypeChiName;

    private BigDecimal codeDiscn;

    public BigDecimal getCo() {
        return co;
    }

    public void setCo(BigDecimal co) {
        this.co = co;
    }

    public String getCn() {
        return cn;
    }

    public void setCn(String cn) {
        this.cn = cn == null ? null : cn.trim();
    }

    public String getCodeChiName() {
        return codeChiName;
    }

    public void setCodeChiName(String codeChiName) {
        this.codeChiName = codeChiName == null ? null : codeChiName.trim();
    }

    public String getCodeDataType() {
        return codeDataType;
    }

    public void setCodeDataType(String codeDataType) {
        this.codeDataType = codeDataType == null ? null : codeDataType.trim();
    }

    public String getCodeTypeChiName() {
        return codeTypeChiName;
    }

    public void setCodeTypeChiName(String codeTypeChiName) {
        this.codeTypeChiName = codeTypeChiName == null ? null : codeTypeChiName.trim();
    }

    public BigDecimal getCodeDiscn() {
        return codeDiscn;
    }

    public void setCodeDiscn(BigDecimal codeDiscn) {
        this.codeDiscn = codeDiscn;
    }
}