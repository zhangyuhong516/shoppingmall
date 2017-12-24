package com.oracle.entity;

import java.math.BigDecimal;

public class Goods {
    private Integer goodsId;

    private Long goodsNumber;

    private Integer goodsTypeId;

    private String goodsName;

    private String goodsPic;

    private String goodsInfo;

    private Integer goodsCul;

    private BigDecimal goodsOriginalPrice;

    private BigDecimal normalPrice;

    private BigDecimal vipPrice;

    private BigDecimal salePrice;

    private Integer goodsReserveCount;

    private Integer goodsTotalSellCount;

    private String goodsBrand;

    private String goodsResource;

    private String goodsT1;

    private String goodsT2;

    private Integer goodsSize;
    
    private int goodsNum;

    public int getGoodsNum() {
		return goodsNum;
	}

	public void setGoodsNum(int goodsNum) {
		this.goodsNum = goodsNum;
	}

	public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public Long getGoodsNumber() {
        return goodsNumber;
    }

    public void setGoodsNumber(Long goodsNumber) {
        this.goodsNumber = goodsNumber;
    }

    public Integer getGoodsTypeId() {
        return goodsTypeId;
    }

    public void setGoodsTypeId(Integer goodsTypeId) {
        this.goodsTypeId = goodsTypeId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName == null ? null : goodsName.trim();
    }

    public String getGoodsPic() {
        return goodsPic;
    }

    public void setGoodsPic(String goodsPic) {
        this.goodsPic = goodsPic == null ? null : goodsPic.trim();
    }

    public String getGoodsInfo() {
        return goodsInfo;
    }

    public void setGoodsInfo(String goodsInfo) {
        this.goodsInfo = goodsInfo == null ? null : goodsInfo.trim();
    }

    public Integer getGoodsCul() {
        return goodsCul;
    }

    public void setGoodsCul(Integer goodsCul) {
        this.goodsCul = goodsCul;
    }

    public BigDecimal getGoodsOriginalPrice() {
        return goodsOriginalPrice;
    }

    public void setGoodsOriginalPrice(BigDecimal goodsOriginalPrice) {
        this.goodsOriginalPrice = goodsOriginalPrice;
    }

    public BigDecimal getNormalPrice() {
        return normalPrice;
    }

    public void setNormalPrice(BigDecimal normalPrice) {
        this.normalPrice = normalPrice;
    }

    public BigDecimal getVipPrice() {
        return vipPrice;
    }

    public void setVipPrice(BigDecimal vipPrice) {
        this.vipPrice = vipPrice;
    }

    public BigDecimal getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(BigDecimal salePrice) {
        this.salePrice = salePrice;
    }

    public Integer getGoodsReserveCount() {
        return goodsReserveCount;
    }

    public void setGoodsReserveCount(Integer goodsReserveCount) {
        this.goodsReserveCount = goodsReserveCount;
    }

    public Integer getGoodsTotalSellCount() {
        return goodsTotalSellCount;
    }

    public void setGoodsTotalSellCount(Integer goodsTotalSellCount) {
        this.goodsTotalSellCount = goodsTotalSellCount;
    }

    public String getGoodsBrand() {
        return goodsBrand;
    }

    public void setGoodsBrand(String goodsBrand) {
        this.goodsBrand = goodsBrand == null ? null : goodsBrand.trim();
    }

    public String getGoodsResource() {
        return goodsResource;
    }

    public void setGoodsResource(String goodsResource) {
        this.goodsResource = goodsResource == null ? null : goodsResource.trim();
    }

    public String getGoodsT1() {
        return goodsT1;
    }

    public void setGoodsT1(String goodsT1) {
        this.goodsT1 = goodsT1 == null ? null : goodsT1.trim();
    }

    public String getGoodsT2() {
        return goodsT2;
    }

    public void setGoodsT2(String goodsT2) {
        this.goodsT2 = goodsT2 == null ? null : goodsT2.trim();
    }

    public Integer getGoodsSize() {
        return goodsSize;
    }

    public void setGoodsSize(Integer goodsSize) {
        this.goodsSize = goodsSize;
    }
}