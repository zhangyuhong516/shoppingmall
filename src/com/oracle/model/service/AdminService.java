package com.oracle.model.service;

import java.util.List;

import com.oracle.entity.Admin;
import com.oracle.entity.Auth;

/**
 * 权限Service接口
 * @author JYK
 *
 */
public interface AdminService {
	//返回所有的管理员
	List<Admin> listAllAdministrator();
	
	//返回单个的管理员
	Admin getAdministratorById(int adminId);
	
	//根据管理员姓名返回管理员对象
	Admin getAdministratorByName(String adminName);
	
	//保存管理员到数据库
	void saveAdministrator(Admin admin);
	
	//更新管理员
	void updateAdministrator(Admin admin);
	
	//删除管理员
	void deleteAdministrator(int adminId);
	
	//查询用户拥有的所有的权限（包括角色的和单独授权的）,这个方法放在那里都行
    List<Auth> listAllAuthByAdminId(int adminId);

}
