package com.oracle.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.InternalResourceView;
import org.springframework.web.servlet.view.RedirectView;

import com.oracle.entity.Admin;
import com.oracle.entity.AdminRole;
import com.oracle.entity.Auth;
import com.oracle.entity.AuthAdmin;
import com.oracle.model.service.AdminRoleService;
import com.oracle.model.service.AdminService;
import com.oracle.model.service.AuthAdminService;
import com.oracle.model.service.AuthService;
import com.oracle.model.service.RoleService;


/**
 * 管理员控制器
 * @author JYK
 *
 */

@Controller
@RequestMapping("administrator")
public class AdminController {
	
	//在线管理员
	public static final String ONLINE_ADMIN = "OnlineAdmin";
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	AuthService authService;
	
	@Autowired
	AuthAdminService authAdminService;
	
	@Autowired
	RoleService roleService;
	
	@Autowired
	AdminRoleService adminRoleService;
	
	/**
	 * 列出管理员列表
	 * @return
	 */
	@RequestMapping("administrator_login")
	public ModelAndView administrator_login(Admin admin, HttpSession session){
		ModelAndView modelAndView = new ModelAndView();
		//从数据库查询对应管理员信息
		Admin adminData = adminService.getAdministratorByName(admin.getAdminName());
		System.out.println(adminData.getAdminId());
		if(adminData != null && adminData.getAdminPassword().equals(admin.getAdminPassword()))
		{
			//登录成功,将管理员装入session
			session.setAttribute(ONLINE_ADMIN, adminData);
			
			//查询当前登录的管理员拥有哪些权限
			
			//(这个只能查出来一部分权限)List<AuthAdmin> authAdminList = authAdminService.selectAllAuthByAdminId(adminData.getAdminId());
			List<Auth> authList = adminService.listAllAuthByAdminId(adminData.getAdminId());//拿出所有的权限
			
			//将用户已拥有的权限集合装入用户 key是url,value是UserAuth
			//这个为什么能获得这些信息
			Map<String,Auth> adminOwnerAuthMap = adminData.getAdminOwnerAuthMap();
			
			//将用户已拥有的权限集合装入用户 key是code,value是UserAuth
			Map<String,Auth> adminOwnerCodeAuthMap = adminData.getAdminOwnerCodeAuthMap();

			for(Auth auth : authList)
			{
				//注意这里取值的时候要在对应的Mapper.xml中写好对应的语句，要进行多表查询
				String authUrl = auth.getAuthUrl();

				System.out.println(authUrl);
				//使用逗号分隔，将访问地址拆成多个
				String[] authUrls = authUrl.split(",");
				
				for(String url : authUrls)
				{
					adminOwnerAuthMap.put(url, auth);
				}
				//注意这里取值的时候要在对应的Mapper.xml中写好对应的语句，要进行多表查询
				adminOwnerCodeAuthMap.put(auth.getAuthCode(), auth);
			
			}
			/*for(AuthAdmin authAdmin : authAdminList)
			{
				//注意这里取值的时候要在对应的Mapper.xml中写好对应的语句，要进行多表查询
				String authUrl = authAdmin.getAuth().getAuthUrl();

				System.out.println(authUrl);
				//使用逗号分隔，将访问地址拆成多个
				String[] authUrls = authUrl.split(",");
				
				for(String url : authUrls)
				{
					adminOwnerAuthMap.put(url, authAdmin);
				}
				//注意这里取值的时候要在对应的Mapper.xml中写好对应的语句，要进行多表查询
				adminOwnerCodeAuthMap.put(authAdmin.getAuth().getAuthCode(), authAdmin);
				
			}*/
			
			modelAndView.setView(new RedirectView("/jump2admin_index.jsp",true));
			
		}
		
		else
		{//失败
			modelAndView.addObject("msg", "登录失败，请检查用户名和密码");
			modelAndView.setView(new InternalResourceView("/content/admin_login.jsp"));
		}
		
		return modelAndView;
	}
	
	
	@RequestMapping("administrator_logout")
	public ModelAndView logout(HttpSession session){
		
		ModelAndView modelAndView = new ModelAndView();
		
		//从session里移除登录用户
		session.removeAttribute(ONLINE_ADMIN);
		
		modelAndView.setView(new RedirectView("/admin.jsp",true));
		
		return modelAndView;
		
	}
	
	
	/**
	 * 列出管理员列表
	 * @return
	 */
	@RequestMapping("list_administrator")
	public List<Admin> list_administrator(){
		
		return adminService.listAllAdministrator();
	}
	
	
	/**
	 * 跳转到edit_auth.jsp中
	 * @param auth
	 * @return
	 */
	@RequestMapping("jump2edit_administrator")
	public String jump2edit_administrator(Admin admin){
		return "administrator/edit_administrator";
	}
	
	/**
	 * 增加管理员
	 * @param admin
	 * @return
	 */
	@RequestMapping("add_administrator")
	public String add_administrator(Admin admin){
		adminService.saveAdministrator(admin);
		
		return "redirect:list_administrator";
	}
	
	/**
	 * 根据id得到权限对象
	 * @param authId
	 * @return
	 */
	@RequestMapping("edit_administrator")
	public Admin edit_administrator(Integer adminId){
		
		return adminService.getAdministratorById(adminId);
	}
	
	
	/**
	 * 更新管理员
	 * @param admin
	 * @return
	 */
	@RequestMapping("update_administrator")
	public String update_administrator(Admin admin){
		
		adminService.updateAdministrator(admin);
		
		return "redirect:list_administrator"; 
	}
	
	/**
	 * 处理删除管理员请求
	 * @param authId
	 * @return
	 */
	@RequestMapping("delete_administrator")
	public String delete_administrator(Integer adminId){
		
		adminService.deleteAdministrator(adminId);
		
		return "redirect:list_administrator"; 
	}
	
	/**
	 * 列出所有的权限，供选择
	 * 在这里要放多个值，一共有三种方法。这里用Map放进去，放入Map中的值就会自动放到Request中？
	 * 放进去方便在jsp中取出来
	 * @return
	 */
	@RequestMapping("administrator_auth")
	public void administrator_auth(Integer adminId,Map<String,Object> map){
		
		map.put("admin", adminService.getAdministratorById(adminId));//得到管理员对象，放到Map中
		
		map.put("authList", authService.listAllAuth());//得到权限对象，放到Map中
			
		//查询用户权限，显示到页面中
		List<AuthAdmin> authAdminList=authAdminService.selectAllAuthByAdminId(adminId);
		
		//用户已经拥有的权限（一会将List中的东西放到这里来）
		Map<Integer,AuthAdmin> authAdminMap=new HashMap<Integer,AuthAdmin>();
		
		//将List转为Map，每迭代一次，就将list中的管理员的权限的id放入Map中
		for(AuthAdmin authAdmin:authAdminList)
		{
			authAdminMap.put(authAdmin.getAuthId(), authAdmin);
		}
		
		map.put("authAdminMap", authAdminMap);//得到用户的对应的权限，放到Map中，一会可以在jsp中取出来
		
		
		
		
		
		//查询出所有的角色
		map.put("roleList", roleService.listAllRole());//得到角色对象，放到Map中
		
		//查询用户角色，显示到页面中
		List<AdminRole> adminRoleList=adminRoleService.listAdminRoleById(adminId);
		//用户已经拥有的权限（一会将List中的东西放到这里来）
		Map<Integer,AdminRole> adminRoleMap=new HashMap<Integer,AdminRole>();
				
		//将List转为Map，每迭代一次，就将list中的管理员的权限的id放入Map中
			for(AdminRole adminRole:adminRoleList)
			{
				adminRoleMap.put(adminRole.getRoleId(), adminRole);
			}
				
			map.put("adminRoleMap", adminRoleMap);//得到用户的对应的权限，放到Map中，一会可以在jsp中取出来
		
	}
	
	/**
	 * 保存管理员的权限
	 * 从页面中取到管理员的id和权限的id，往管理员权限（中间表）插值
	 * 
	 * @return
	 */
	@RequestMapping("save_admin_auth")
	public String save_admin_auth(Integer adminId,Integer[] authIds,Integer[] roleIds){
		//在保存用户权限前要先删干净用户已经拥有的权限
		authAdminService.deleteAdminAllAuth(adminId);
		
		//保存用户权限到中间表中
		if(authIds!=null&&authIds.length>0){
			authAdminService.saveAdminAuth(adminId, authIds);
		}
		
		
		//删除用户所拥有的角色
		adminRoleService.deleteAdminRoleById(adminId);
		
		//保存用户角色到中间表中
		if(roleIds!=null&&roleIds.length>0){
			adminRoleService.saveAdminAllRole(adminId, roleIds);
		}
		
		return "redirect:list_administrator";
	}
	
}
