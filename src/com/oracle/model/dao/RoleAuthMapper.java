package com.oracle.model.dao;

import java.util.List;

import com.oracle.entity.RoleAuth;

public interface RoleAuthMapper {
    int deleteByPrimaryKey(Integer roleAuthId);
    
    //删除对应角色的所有权限
    int deleteByRoleId(Integer roleId);

    int insert(RoleAuth record);

    int insertSelective(RoleAuth record);
    
    //批量插值
    int insertBatch(Integer roleId,String[] authIds);

    RoleAuth selectByPrimaryKey(Integer roleAuthId);
    
    //根据角色来查出其所有的权限
    List<RoleAuth> selectByRole(Integer roleId);

    int updateByPrimaryKeySelective(RoleAuth record);

    int updateByPrimaryKey(RoleAuth record);
}