package com.oracle.model.dao;

import com.oracle.entity.Suggest;

public interface SuggestMapper {
    int deleteByPrimaryKey(Integer suggestId);

    int insert(Suggest record);

    int insertSelective(Suggest record);

    Suggest selectByPrimaryKey(Integer suggestId);

    int updateByPrimaryKeySelective(Suggest record);

    int updateByPrimaryKey(Suggest record);
}