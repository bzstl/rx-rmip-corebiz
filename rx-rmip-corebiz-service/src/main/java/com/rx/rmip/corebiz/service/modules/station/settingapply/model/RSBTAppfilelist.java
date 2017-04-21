package com.rx.rmip.corebiz.service.modules.station.settingapply.model;

public class RSBTAppfilelist {
    private String guid;

    private String appGuid;

    private String appCode;

    private String appFileNo;

    private String appAttachment;

    private String appFileUrl;

    public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid == null ? null : guid.trim();
    }

    public String getAppGuid() {
        return appGuid;
    }

    public void setAppGuid(String appGuid) {
        this.appGuid = appGuid == null ? null : appGuid.trim();
    }

    public String getAppCode() {
        return appCode;
    }

    public void setAppCode(String appCode) {
        this.appCode = appCode == null ? null : appCode.trim();
    }

    public String getAppFileNo() {
        return appFileNo;
    }

    public void setAppFileNo(String appFileNo) {
        this.appFileNo = appFileNo == null ? null : appFileNo.trim();
    }

    public String getAppAttachment() {
        return appAttachment;
    }

    public void setAppAttachment(String appAttachment) {
        this.appAttachment = appAttachment == null ? null : appAttachment.trim();
    }

    public String getAppFileUrl() {
        return appFileUrl;
    }

    public void setAppFileUrl(String appFileUrl) {
        this.appFileUrl = appFileUrl == null ? null : appFileUrl.trim();
    }

	@Override
	public String toString() {
		return "RSBTAppfilelist [guid=" + guid + ", appGuid=" + appGuid + ", appCode=" + appCode + ", appFileNo="
				+ appFileNo + ", appAttachment=" + appAttachment + ", appFileUrl=" + appFileUrl + "]";
	}

}