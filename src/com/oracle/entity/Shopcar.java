package com.oracle.entity;

import java.math.BigDecimal;

public class Shopcar {
    private Integer shopcarGoodsId;

    private BigDecimal userId;

    private Integer goodsId;

    private Long goodsNo;
    
    private Goods goods;

    public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public Integer getShopcarGoodsId() {
        return shopcarGoodsId;
    }

    public void setShopcarGoodsId(Integer shopcarGoodsId) {
        this.shopcarGoodsId = shopcarGoodsId;
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

    public Long getGoodsNo() {
        return goodsNo;
    }

    public void setGoodsNo(Long goodsNo) {
        this.goodsNo = goodsNo;
    }
}