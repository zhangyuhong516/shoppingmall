package com.oracle.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.entity.User;
import com.oracle.model.dao.UserMapper;
import com.oracle.util.Pager;
@Service
public class UserServiceImp implements UserService {

	@Autowired
	UserMapper userMapper;
	
	@Override
	public User get(String userName) {
		// TODO Auto-generated method stub
		return userMapper.selectByUserName(userName);
	}

	@Override
	public void add(User user) {
		// TODO Auto-generated method stub
		userMapper.insert(user);
		
	}

	@Override
	public List<User> list() {
		// TODO Auto-generated method stub
		return userMapper.selectAll();
	}
	

	@Override
	public User get(Integer userId) {
		// TODO Auto-generated method stub
		return userMapper.selectByPrimaryKey(userId);
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		userMapper.updateByPrimaryKey(user);
	}

	@Override
	public void delete(Integer userId) {
		// TODO Auto-generated method stub
		userMapper.deleteByPrimaryKey(userId);
		
	}

	@Override
	public List<User> list(User user,Pager pager) {
		// TODO Auto-generated method stub
		pager.setTotalCount(userMapper.selectCount(user));
		return userMapper.selectByPager(user,pager);
	}

	@Override
	public List<User> list(User user) {
		// TODO Auto-generated method stub
		return userMapper.select(user);
	}
	
}
