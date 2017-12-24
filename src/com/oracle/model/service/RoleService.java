package com.oracle.model.service;

import java.util.List;

import com.oracle.entity.Role;

/**
 * 角色Service接口
 * @author JYK
 *
 */
public interface RoleService {
	
	List<Role> listAllRole();
	
	Role getRoleById(int id);
	
	void saveRole(Role role);
	
	void updateRole(Role role);
	
	void deleteRoleById(int id);

}
