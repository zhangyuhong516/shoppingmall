package com.oracle.model.service;

import java.util.List;

import com.oracle.entity.AuthAdmin;

/**
 * 管理员权限（中间表）Service
 * @author JYK
 *
 */
public interface AuthAdminService {
	
	//保存管理员的对应的权限，把管理员的id和权限的id（多个）传进去
	void saveAdminAuth(Integer adminId,Integer[] authIds);
	
	//删除管理员的所有的权限，把管理员的id传进去，删除其所有的权限。在授权的时候要先把以前的权限先都删掉
	void deleteAdminAllAuth(Integer adminId);
	
	//查询管理员的对应的权限，把管理员的id和权限的id（多个）传进去
	List<AuthAdmin> selectAllAuthByAdminId(Integer adminId);

}
