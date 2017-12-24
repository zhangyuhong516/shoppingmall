package com.oracle.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.entity.Role;
import com.oracle.entity.RoleAuth;
import com.oracle.model.service.AuthService;
import com.oracle.model.service.RoleAuthService;
import com.oracle.model.service.RoleService;

/**
 * 角色控制器
 * @author JYK
 *
 */

@Controller
@RequestMapping("role")
public class RoleController {
	
	@Autowired
	RoleService roleService;
	
	@Autowired
	AuthService authService;
	
	@Autowired
	RoleAuthService roleAuthService;
	
	/**
	 * 列出角色列表
	 * @return
	 */
	@RequestMapping("list_role")
	public List<Role> list_role(){
		
		return roleService.listAllRole();
	}
	
	@RequestMapping("jump2add_role")
	public String jump2add_role(Role role){
		
		return "role/edit_role";
	}
	
	@RequestMapping("add_role")
	public String add_role(Role role){
		roleService.saveRole(role);
		return "redirect:list_role";
	}
	
	@RequestMapping("edit_role")
	public Role edit_role(Integer roleId){
		
		return roleService.getRoleById(roleId);
	}
	
	@RequestMapping("update_role")
	public String update_role(Role role){
		roleService.updateRole(role);
		return "redirect:list_role";
	}
	
	@RequestMapping("delete_role")
	public String delete_role(Integer roleId){
		roleService.deleteRoleById(roleId);
		return "redirect:list_role";
	}
	
	/**
	 * 分配权限
	 * @param map
	 */
	@RequestMapping("assign_role_auth")
	public void assign_role_auth(Integer roleId,Map<String,Object> map){
		
		//放角色基本信息
		map.put("role", roleService.getRoleById(roleId));
		
		//放所有的权限
		map.put("authList", authService.listAllAuth());
		
		//查询此角色已经拥有的权限
		List<RoleAuth> roleAuthList=roleAuthService.listRoleAllAuth(roleId);
		Map<Integer,RoleAuth> roleAuthMap=new HashMap<Integer,RoleAuth>();
		
		//将List放入Map中
		for(RoleAuth roleAuth:roleAuthList)
		{
			roleAuthMap.put(roleAuth.getAuthId(), roleAuth);
		}
		map.put("roleAuthMap", roleAuthMap);
	}
	
	
	@RequestMapping("save_role_auth")
	public String save_role_auth(Integer roleId,String[] authIds){
		roleAuthService.deleteRoleAllAuth(roleId);
		roleAuthService.saveRoleAllAuth(roleId, authIds);

		return "redirect:list_role";
	}
	

}
