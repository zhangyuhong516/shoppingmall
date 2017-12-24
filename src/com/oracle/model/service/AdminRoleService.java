package com.oracle.model.service;

import java.util.List;

import com.oracle.entity.AdminRole;

public interface AdminRoleService {
	//删除管理员拥有的角色
	void deleteAdminRoleById(int adminId);
	
	//增加管理员的角色（批量）
	void saveAdminAllRole(int adminId,Integer[] roleIds);
	
	
	List<AdminRole> listAdminRoleById(Integer adminId);
	
	

}
