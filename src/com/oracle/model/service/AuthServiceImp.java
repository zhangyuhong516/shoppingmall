package com.oracle.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.entity.Auth;
/**
 * 权限Service实现类
 * @author JYK
 *
 */
import com.oracle.model.dao.AuthMapper;
import com.oracle.util.Pager;
@Service
public class AuthServiceImp implements AuthService{

	@Autowired
	AuthMapper authmapper;
	
	@Override
	public List<Auth> listAllAuth() {
		return authmapper.selectAllAuth();
	}

	@Override
	public Auth getAuthById(int authId) {
		return authmapper.selectByPrimaryKey(authId);
	}

	@Override
	public void saveAuth(Auth auth) {
		authmapper.insert(auth);
		
	}

	@Override
	public void updateAuth(Auth auth) {
		authmapper.updateByPrimaryKey(auth);
		
	}

	@Override
	public void deleteAuth(int authId) {
		authmapper.deleteByPrimaryKey(authId);
		
	}

	@Override
	public List<Auth> listAllAuth(Pager pager) {
		// TODO Auto-generated method stub
		pager.setTotalCount(authmapper.selectCount());
		return authmapper.selectByPager(pager);
	}
	

}
