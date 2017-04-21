package com.rx.rmip.corebiz.service.modules.station.settingapply.model;

public class RSBTOrg {
	private String guid;

    private String orgCode; //组织机构代码

    private String orgName; //组织机构名称

    private String orgAreaCode;//地区代码

    private String orgSysCode;//系统/行业代码

    private String orgType;//单位类型

    private String orgLinkPerson;//单位联系人

    private String orgPersonId;//联系人身份证号码

    private String orgSupCode;//上级组织机构代码

    private String orgAddr;//组织机构地址

    private String orgPost;//组织机构邮编

    private String orgPhone;//联系电话

    private String orgMobPhone;//手机号码

    private String orgFax;//组织机构传真

    private String orgBank;//开户银行

    private String orgAccountName;//账户名称

    private String orgAccount;//银行帐号

    private Short orgHostility;//设台单位性质

    private String orgWebSite;//网址

    private String orgMail;//电子邮箱

    public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid == null ? null : guid.trim();
    }

    public String getOrgCode() {
        return orgCode;
    }

    public void setOrgCode(String orgCode) {
        this.orgCode = orgCode == null ? null : orgCode.trim();
    }

    public String getOrgName() {
        return orgName;
    }

    public void setOrgName(String orgName) {
        this.orgName = orgName == null ? null : orgName.trim();
    }

    public String getOrgAreaCode() {
        return orgAreaCode;
    }

    public void setOrgAreaCode(String orgAreaCode) {
        this.orgAreaCode = orgAreaCode == null ? null : orgAreaCode.trim();
    }

    public String getOrgSysCode() {
        return orgSysCode;
    }

    public void setOrgSysCode(String orgSysCode) {
        this.orgSysCode = orgSysCode == null ? null : orgSysCode.trim();
    }

    public String getOrgType() {
        return orgType;
    }

    public void setOrgType(String orgType) {
        this.orgType = orgType == null ? null : orgType.trim();
    }

    public String getOrgLinkPerson() {
        return orgLinkPerson;
    }

    public void setOrgLinkPerson(String orgLinkPerson) {
        this.orgLinkPerson = orgLinkPerson == null ? null : orgLinkPerson.trim();
    }

    public String getOrgPersonId() {
        return orgPersonId;
    }

    public void setOrgPersonId(String orgPersonId) {
        this.orgPersonId = orgPersonId == null ? null : orgPersonId.trim();
    }

    public String getOrgSupCode() {
        return orgSupCode;
    }

    public void setOrgSupCode(String orgSupCode) {
        this.orgSupCode = orgSupCode == null ? null : orgSupCode.trim();
    }

    public String getOrgAddr() {
        return orgAddr;
    }

    public void setOrgAddr(String orgAddr) {
        this.orgAddr = orgAddr == null ? null : orgAddr.trim();
    }

    public String getOrgPost() {
        return orgPost;
    }

    public void setOrgPost(String orgPost) {
        this.orgPost = orgPost == null ? null : orgPost.trim();
    }

    public String getOrgPhone() {
        return orgPhone;
    }

    public void setOrgPhone(String orgPhone) {
        this.orgPhone = orgPhone == null ? null : orgPhone.trim();
    }

    public String getOrgMobPhone() {
        return orgMobPhone;
    }

    public void setOrgMobPhone(String orgMobPhone) {
        this.orgMobPhone = orgMobPhone == null ? null : orgMobPhone.trim();
    }

    public String getOrgFax() {
        return orgFax;
    }

    public void setOrgFax(String orgFax) {
        this.orgFax = orgFax == null ? null : orgFax.trim();
    }

    public String getOrgBank() {
        return orgBank;
    }

    public void setOrgBank(String orgBank) {
        this.orgBank = orgBank == null ? null : orgBank.trim();
    }

    public String getOrgAccountName() {
        return orgAccountName;
    }

    public void setOrgAccountName(String orgAccountName) {
        this.orgAccountName = orgAccountName == null ? null : orgAccountName.trim();
    }

    public String getOrgAccount() {
        return orgAccount;
    }

    public void setOrgAccount(String orgAccount) {
        this.orgAccount = orgAccount == null ? null : orgAccount.trim();
    }

    public Short getOrgHostility() {
        return orgHostility;
    }

    public void setOrgHostility(Short orgHostility) {
        this.orgHostility = orgHostility;
    }

    public String getOrgWebSite() {
        return orgWebSite;
    }

    public void setOrgWebSite(String orgWebSite) {
        this.orgWebSite = orgWebSite == null ? null : orgWebSite.trim();
    }

    public String getOrgMail() {
        return orgMail;
    }

    public void setOrgMail(String orgMail) {
        this.orgMail = orgMail == null ? null : orgMail.trim();
    }

	@Override
	public String toString() {
		return "RSBTOrg [guid=" + guid + ", orgAreaCode=" + orgAreaCode + ", orgType=" + orgType + "]";
	}

}