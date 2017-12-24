package com.oracle.model.dao;

import java.util.List;

import com.oracle.entity.Role;

public interface RoleMapper {
    int deleteByPrimaryKey(Integer roleId);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer roleId);
    
    //返回所有的角色
    List<Role> selectAllRole();

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);
}