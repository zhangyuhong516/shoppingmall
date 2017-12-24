package com.oracle.model.dao;

import com.oracle.entity.AuthUser;

public interface AuthUserMapper {
    int deleteByPrimaryKey(Integer authUserId);

    int insert(AuthUser record);

    int insertSelective(AuthUser record);

    AuthUser selectByPrimaryKey(Integer authUserId);

    int updateByPrimaryKeySelective(AuthUser record);

    int updateByPrimaryKey(AuthUser record);
}