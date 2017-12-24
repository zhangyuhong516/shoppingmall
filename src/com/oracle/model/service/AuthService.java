package com.oracle.model.service;

import java.util.List;

import com.oracle.entity.Auth;
import com.oracle.util.Pager;

/**
 * 权限Service接口
 * @author JYK
 *
 */
public interface AuthService {
	//返回所有的权限
	List<Auth> listAllAuth();
	List<Auth> listAllAuth(Pager pager);
	
	//返回单个的权限
	Auth getAuthById(int authId);
	
	//保存权限到数据库
	void saveAuth(Auth auth);
	
	//更新权限
	void updateAuth(Auth auth);
	
	//删除权限
	void deleteAuth(int authId);
	
	

}
