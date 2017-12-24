package com.oracle.model.dao;

import java.util.List;

import com.oracle.entity.AuthAdmin;

public interface AuthAdminMapper {
    int deleteByPrimaryKey(Integer authAdminId);
    
    //
    int deleteAdminAllAuthByAdminId(Integer adminId);

    int insert(AuthAdmin record);

    int insertSelective(AuthAdmin record);
    
    //保存一个管理员的所有的应该有的权限
    void saveAdminAuth(Integer adminId, Integer[] authIds);

    AuthAdmin selectByPrimaryKey(Integer authAdminId);
    
    //查询用户对应的所有的权限
    List<AuthAdmin> selectAllAuthByAdminId(Integer adminId);

    int updateByPrimaryKeySelective(AuthAdmin record);

    int updateByPrimaryKey(AuthAdmin record);
}