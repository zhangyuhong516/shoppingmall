package com.oracle.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.entity.AdminRole;
import com.oracle.model.dao.AdminRoleMapper;

@Service
public class AdminRoleServiceImp implements AdminRoleService {

	@Autowired
	AdminRoleMapper adminRoleMapper;
	
	@Override
	public void deleteAdminRoleById(int adminId) {
		adminRoleMapper.deleteByAdminId(adminId);

	}

	@Override
	public void saveAdminAllRole(int adminId, Integer[] roleIds) {
		adminRoleMapper.insertBatch(adminId, roleIds);

	}

	@Override
	public List<AdminRole> listAdminRoleById(Integer adminId) {
		return adminRoleMapper.selectAdminRoleById(adminId);
	}

}
