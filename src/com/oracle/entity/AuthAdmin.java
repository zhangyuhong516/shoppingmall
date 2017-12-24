package com.oracle.entity;

import java.math.BigDecimal;

public class AuthAdmin {
    private Integer authAdminId;

    private Integer authId;

    private BigDecimal adminId;
    
    private Auth auth;

    public Integer getAuthAdminId() {
        return authAdminId;
    }

    public void setAuthAdminId(Integer authAdminId) {
        this.authAdminId = authAdminId;
    }

    public Integer getAuthId() {
        return authId;
    }

    public void setAuthId(Integer authId) {
        this.authId = authId;
    }

    public BigDecimal getAdminId() {
        return adminId;
    }

    public void setAdminId(BigDecimal adminId) {
        this.adminId = adminId;
    }

	public Auth getAuth() {
		return auth;
	}

	public void setAuth(Auth auth) {
		this.auth = auth;
	}
    
    
}