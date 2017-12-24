package com.oracle.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.entity.Admin;
import com.oracle.entity.Auth;
import com.oracle.model.dao.AdminMapper;
/**
 * 管理员Service实现类
 * @author JYK
 *
 */
@Service
public class AdminServiceImp implements AdminService{

	@Autowired
	AdminMapper adminMapper;

	@Override
	public List<Admin> listAllAdministrator() {
		return adminMapper.selectAllAdministrator();
	}

	@Override
	public Admin getAdministratorById(int adminId) {
		return adminMapper.selectByPrimaryKey(adminId);
	}

	@Override
	public void saveAdministrator(Admin admin) {
		adminMapper.insert(admin);
	}

	@Override
	public void updateAdministrator(Admin admin) {
		adminMapper.updateByPrimaryKey(admin);
	}

	@Override
	public void deleteAdministrator(int adminId) {
		adminMapper.deleteByPrimaryKey(adminId);
	}

	@Override
	public Admin getAdministratorByName(String adminName) {
		Admin admin=adminMapper.getAdministratorByName(adminName);
		return admin;
	}

	@Override
	public List<Auth> listAllAuthByAdminId(int adminId) {
		
		return adminMapper.selectAllAuthByAdminId(adminId);
	}
	
	
	
	

}
