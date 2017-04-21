package com.rx.rmip.corebiz.service.modules.freq.allocation.model;

import java.util.Date;

public class FRBTVersion {
    private String verCode;

    private String verName;

    private Date startDate;

    @Override
	public String toString() {
		return "FRBTVersion [verCode=" + verCode + ", verName=" + verName + ", startDate=" + startDate + ", dataStatus="
				+ dataStatus + ", memo=" + memo + "]";
	}

	private String dataStatus;

    private String memo;

    public String getVerCode() {
        return verCode;
    }

    public void setVerCode(String verCode) {
        this.verCode = verCode == null ? null : verCode.trim();
    }

    public String getVerName() {
        return verName;
    }

    public void setVerName(String verName) {
        this.verName = verName == null ? null : verName.trim();
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public String getDataStatus() {
        return dataStatus;
    }

    public void setDataStatus(String dataStatus) {
        this.dataStatus = dataStatus == null ? null : dataStatus.trim();
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo == null ? null : memo.trim();
    }
}