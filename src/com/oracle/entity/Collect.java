package com.oracle.entity;

import java.math.BigDecimal;

public class Collect {
    private Integer collectId;

    private BigDecimal userId;

    private Integer goodsId;

    private String collectKind;

    public Integer getCollectId() {
        return collectId;
    }

    public void setCollectId(Integer collectId) {
        this.collectId = collectId;
    }

    public BigDecimal getUserId() {
        return userId;
    }

    public void setUserId(BigDecimal userId) {
        this.userId = userId;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public String getCollectKind() {
        return collectKind;
    }

    public void setCollectKind(String collectKind) {
        this.collectKind = collectKind == null ? null : collectKind.trim();
    }
}