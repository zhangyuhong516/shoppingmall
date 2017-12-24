package com.oracle.entity;

import java.util.Date;

public class Suggest {
    private Integer suggestId;

    private Integer userId;

    private String suggestContent;

    private Date suggestDate;

    public Integer getSuggestId() {
        return suggestId;
    }

    public void setSuggestId(Integer suggestId) {
        this.suggestId = suggestId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getSuggestContent() {
        return suggestContent;
    }

    public void setSuggestContent(String suggestContent) {
        this.suggestContent = suggestContent == null ? null : suggestContent.trim();
    }

    public Date getSuggestDate() {
        return suggestDate;
    }

    public void setSuggestDate(Date suggestDate) {
        this.suggestDate = suggestDate;
    }
}