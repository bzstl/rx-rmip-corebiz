package com.rx.rmip.corebiz.service.modules.freq.allocation.model;

public class FRBTService {
    private String servCode;

    private String servName;

    private Long rgbColor;

    private String iscutline;

    private String servParent;

    public String getServCode() {
        return servCode;
    }

    public void setServCode(String servCode) {
        this.servCode = servCode == null ? null : servCode.trim();
    }

    public String getServName() {
        return servName;
    }

    public void setServName(String servName) {
        this.servName = servName == null ? null : servName.trim();
    }

    public Long getRgbColor() {
        return rgbColor;
    }

    public void setRgbColor(Long rgbColor) {
        this.rgbColor = rgbColor;
    }

    public String getIscutline() {
        return iscutline;
    }

    public void setIscutline(String iscutline) {
        this.iscutline = iscutline == null ? null : iscutline.trim();
    }

    public String getServParent() {
        return servParent;
    }

    public void setServParent(String servParent) {
        this.servParent = servParent == null ? null : servParent.trim();
    }
}