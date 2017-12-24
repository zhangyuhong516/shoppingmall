package com.oracle.model.dao;

import java.util.List;

import com.oracle.entity.Admin;
import com.oracle.entity.Auth;

public interface AdminMapper {
    int deleteByPrimaryKey(Integer adminId);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer adminId);
    
  //返回一个列表的管理员
    List<Admin> selectAllAdministrator();
    
    //根据姓名从数据库中取出来管理员对象
    Admin getAdministratorByName(String adminName);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
    
    
    //查询用户拥有的所有的权限（包括角色的和单独授权的）,这个方法放在那里都行
    List<Auth> selectAllAuthByAdminId(int adminId);
}