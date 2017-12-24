package com.oracle.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.entity.RoleAuth;
import com.oracle.model.dao.RoleAuthMapper;

@Service
public class RoleAuthServiceImp implements RoleAuthService {

	@Autowired
	RoleAuthMapper roleAuthMapper;
	
	@Override
	public void saveRoleAllAuth(Integer roleId, String[] authIds) {
		roleAuthMapper.insertBatch(roleId, authIds);
	}

	@Override
	public void deleteRoleAllAuth(Integer roleId) {
		roleAuthMapper.deleteByRoleId(roleId);
		
	}

	@Override
	public List<RoleAuth> listRoleAllAuth(Integer roleId) {
		
		return roleAuthMapper.selectByRole(roleId);
	}

}
