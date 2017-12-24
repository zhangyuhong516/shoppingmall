package com.oracle.model.dao;

import java.util.List;

import com.oracle.entity.AdminRole;

public interface AdminRoleMapper {
    int deleteByPrimaryKey(Integer adminRoleId);
    
    void deleteByAdminId(Integer adminId);

    int insert(AdminRole record);
    
    //批量增加
    int insertBatch(int adminId,Integer[] roleIds);

    int insertSelective(AdminRole record);

    AdminRole selectByPrimaryKey(Integer adminRoleId);
    
    //查询用户已经拥有的所有的角色
    List<AdminRole> selectAdminRoleById(Integer adminId);

    int updateByPrimaryKeySelective(AdminRole record);

    int updateByPrimaryKey(AdminRole record);
}