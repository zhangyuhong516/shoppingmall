package com.oracle.entity;

public class GoodsType {
    private Integer goodsTypeId;

    private String goodsTypeName;

    private String goodsTypePid;

    private String goodsTypeT1;

    private Integer goodsTypeLv;

    private Integer goodsTypeRank;
    
    private Integer childcount;
    
    private int a;
        
	public Integer getChildcount() {
		return childcount;
	}

	public void setChildcount(Integer childcount) {
		this.childcount = childcount;
	}

	public Integer getGoodsTypeId() {
        return goodsTypeId;
    }

    public void setGoodsTypeId(Integer goodsTypeId) {
        this.goodsTypeId = goodsTypeId;
    }

    public String getGoodsTypeName() {
        return goodsTypeName;
    }

    public void setGoodsTypeName(String goodsTypeName) {
        this.goodsTypeName = goodsTypeName == null ? null : goodsTypeName.trim();
    }

    public String getGoodsTypePid() {
        return goodsTypePid;
    }

    public void setGoodsTypePid(String goodsTypePid) {
        this.goodsTypePid = goodsTypePid == null ? null : goodsTypePid.trim();
    }

    public String getGoodsTypeT1() {
        return goodsTypeT1;
    }

    public void setGoodsTypeT1(String goodsTypeT1) {
        this.goodsTypeT1 = goodsTypeT1 == null ? null : goodsTypeT1.trim();
    }

    public Integer getGoodsTypeLv() {
        return goodsTypeLv;
    }

    public void setGoodsTypeLv(Integer goodsTypeLv) {
        this.goodsTypeLv = goodsTypeLv;
    }

    public Integer getGoodsTypeRank() {
        return goodsTypeRank;
    }

    public void setGoodsTypeRank(Integer goodsTypeRank) {
        this.goodsTypeRank = goodsTypeRank;
    }
}