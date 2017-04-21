package com.rx.rmip.corebiz.service.modules.freq.allocation.model;

public class FRBTAllocationService {
    private String guid;

    private String allocGuid;

    private String isallocate;

    private String notallocInfo;

    private String servCode;

    private String addiInfo;

    private String servType;

    private String fnCode;

	private FRBTService service;

	public FRBTService getService() {
		return service;
	}

	public void setService(FRBTService service) {
		this.service = service;
	}

	public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid == null ? null : guid.trim();
    }

    public String getAllocGuid() {
        return allocGuid;
    }

    public void setAllocGuid(String allocGuid) {
        this.allocGuid = allocGuid == null ? null : allocGuid.trim();
    }

    public String getIsallocate() {
        return isallocate;
    }

    public void setIsallocate(String isallocate) {
        this.isallocate = isallocate == null ? null : isallocate.trim();
    }

    public String getNotallocInfo() {
        return notallocInfo;
    }

    public void setNotallocInfo(String notallocInfo) {
        this.notallocInfo = notallocInfo == null ? null : notallocInfo.trim();
    }

    public String getServCode() {
        return servCode;
    }

    public void setServCode(String servCode) {
        this.servCode = servCode == null ? null : servCode.trim();
    }

    public String getAddiInfo() {
        return addiInfo;
    }

    public void setAddiInfo(String addiInfo) {
        this.addiInfo = addiInfo == null ? null : addiInfo.trim();
    }

    public String getServType() {
        return servType;
    }

    public void setServType(String servType) {
        this.servType = servType == null ? null : servType.trim();
    }

    public String getFnCode() {
        return fnCode;
    }

    public void setFnCode(String fnCode) {
        this.fnCode = fnCode == null ? null : fnCode.trim();
    }
}