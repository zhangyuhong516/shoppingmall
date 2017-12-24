package com.oracle.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.entity.AuthAdmin;
import com.oracle.model.dao.AuthAdminMapper;

@Service
public class AuthAdminServiceImp implements AuthAdminService {
	
	@Autowired
	AuthAdminMapper authAdminMapper;

	@Override
	public void saveAdminAuth(Integer adminId, Integer[] authIds) {
		authAdminMapper.saveAdminAuth(adminId, authIds);
	}

	@Override
	public void deleteAdminAllAuth(Integer adminId) {
		authAdminMapper.deleteAdminAllAuthByAdminId(adminId);
		
	}

	@Override
	public List<AuthAdmin> selectAllAuthByAdminId(Integer adminId) {
		List<AuthAdmin> list=authAdminMapper.selectAllAuthByAdminId(adminId);
		return list;
	}
	
	

}
