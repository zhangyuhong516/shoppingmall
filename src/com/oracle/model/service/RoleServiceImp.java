package com.oracle.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.entity.Role;
import com.oracle.model.dao.RoleMapper;

@Service
public class RoleServiceImp implements RoleService {

	@Autowired
	RoleMapper roleMapper;
	
	@Override
	public List<Role> listAllRole() {

		return roleMapper.selectAllRole();
	}

	@Override
	public Role getRoleById(int id) {

		return roleMapper.selectByPrimaryKey(id);
	}

	@Override
	public void saveRole(Role role) {
		roleMapper.insert(role);

	}

	@Override
	public void updateRole(Role role) {
		roleMapper.updateByPrimaryKey(role);

	}

	@Override
	public void deleteRoleById(int id) {
		roleMapper.deleteByPrimaryKey(id);

	}

}
