package com.oracle.entity;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.format.annotation.DateTimeFormat;

public class Admin {
    private Integer adminId;

    private String adminName;

    private String adminSex;

    private String adminPassword;

    private String adminCardid;

    private String adminTel;

    @DateTimeFormat(pattern="yyyy-mm-dd")
    private Date adminCreatetime;

    private Short adminState;
    
    
    //管理员已经拥用的权限map,key放url
    private Map<String,Auth> adminOwnerAuthMap = new HashMap<String, Auth>();
    
    //管理员已经拥用的权限map,key放code
    private Map<String,Auth> adminOwnerCodeAuthMap = new HashMap<String, Auth>();
    
    

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName == null ? null : adminName.trim();
    }

    public String getAdminSex() {
        return adminSex;
    }

    public void setAdminSex(String adminSex) {
        this.adminSex = adminSex == null ? null : adminSex.trim();
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword == null ? null : adminPassword.trim();
    }

    public String getAdminCardid() {
        return adminCardid;
    }

    public void setAdminCardid(String adminCardid) {
        this.adminCardid = adminCardid == null ? null : adminCardid.trim();
    }

    public String getAdminTel() {
        return adminTel;
    }

    public void setAdminTel(String adminTel) {
        this.adminTel = adminTel == null ? null : adminTel.trim();
    }

    public Date getAdminCreatetime() {
        return adminCreatetime;
    }

    public void setAdminCreatetime(Date adminCreatetime) {
        this.adminCreatetime = adminCreatetime;
    }

    public Short getAdminState() {
        return adminState;
    }

    public void setAdminState(Short adminState) {
        this.adminState = adminState;
    }

	public Map<String, Auth> getAdminOwnerAuthMap() {
		return adminOwnerAuthMap;
	}

	public void setAdminOwnerAuthMap(Map<String, Auth> adminOwnerAuthMap) {
		this.adminOwnerAuthMap = adminOwnerAuthMap;
	}

	public Map<String, Auth> getAdminOwnerCodeAuthMap() {
		return adminOwnerCodeAuthMap;
	}

	public void setAdminOwnerCodeAuthMap(Map<String, Auth> adminOwnerCodeAuthMap) {
		this.adminOwnerCodeAuthMap = adminOwnerCodeAuthMap;
	}

    
    
    
    
    
}