package com.oracle.model.service;

import java.util.List;

import com.oracle.entity.RoleAuth;

/**
 * 角色权限Service接口
 * @author JYK
 *
 */
public interface RoleAuthService {
	//保存这个用户所有的权限
	void saveRoleAllAuth(Integer roleId,String[] authIds);
	
	//删除这个用户所有的权限
	void deleteRoleAllAuth(Integer roleId);
	
	List<RoleAuth> listRoleAllAuth(Integer roleId);

}
