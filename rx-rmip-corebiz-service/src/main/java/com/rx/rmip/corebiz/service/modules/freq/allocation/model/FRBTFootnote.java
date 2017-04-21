package com.rx.rmip.corebiz.service.modules.freq.allocation.model;

public class FRBTFootnote {
    private String fnCode;

    private String fnProperty;

    private String fnClass;

    private String fnContent;

    private String memo;

    public String getFnCode() {
        return fnCode;
    }

    public void setFnCode(String fnCode) {
        this.fnCode = fnCode == null ? null : fnCode.trim();
    }

    public String getFnProperty() {
        return fnProperty;
    }

    public void setFnProperty(String fnProperty) {
        this.fnProperty = fnProperty == null ? null : fnProperty.trim();
    }

    public String getFnClass() {
        return fnClass;
    }

    public void setFnClass(String fnClass) {
        this.fnClass = fnClass == null ? null : fnClass.trim();
    }

    public String getFnContent() {
        return fnContent;
    }

    public void setFnContent(String fnContent) {
        this.fnContent = fnContent == null ? null : fnContent.trim();
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo == null ? null : memo.trim();
    }
}