package com.oracle.model.service;


import java.util.List;

import com.oracle.entity.User;
import com.oracle.util.Pager;
/**
 * 权限Service接口
 * @author JYK
 *
 */
public interface UserService {
	
	public User get(String userName);
	
	public void add(User user);
	
	public List<User> list();
	
	public List<User> list(User user);
	
	public List<User> list(User user,Pager pager);
	
	public User get(Integer userId);
	
	public void update(User user);
	
	public void delete(Integer userId);
	
}
