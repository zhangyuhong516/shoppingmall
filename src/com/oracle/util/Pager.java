package com.oracle.util;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

public class Pager {
	
	private int currentNo = 1;//当前页号
	private int pageCount = 5;//每页记录数
	
	private int begin;//行号的起始位置
	private int end;//行号的结束位置
	
	private int totalCount = 0;//总记录数
	private int totalPageCount = 1;//总页数
	
	private boolean hasNext = false;//是否有下一页
	private boolean hasPrevious = false;//是否有上一页
	
	private String path;//翻页路径

	public Pager(){
		//计算位置
		countPosition();
		
		//解析请求里所有的参数
		parseParamter();
		
	}
	
	/**
	 * 取请求里所有的参数，拼path后面
	 */
	public void parseParamter(){
	
		//取请求
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		
		//取应用的根目录
		//path = request.getContextPath() + "?1=1";
		
		//取当前请求的地址
		path = request.getRequestURI() + "?1=1";
		
		//取请求当中所有的参数
		Enumeration<String> parameterNames = request.getParameterNames();
		
		while(parameterNames.hasMoreElements()){
			
			String paramterName = parameterNames.nextElement();
			
			//对1和currentNo不做处理
			if(!"1".equals(paramterName) && !"currentNo".equals(paramterName)){
				String paramterVaule = request.getParameter(paramterName);
				
				try {
					paramterVaule = URLEncoder.encode(paramterVaule, "UTF-8");
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
				
				path += "&" + paramterName + "=" + paramterVaule;
			}
			
		}
		
		
		
		
	}
	
	
	public void countPosition(){
		//计算起始位置和结束位置
		begin = 1 + (currentNo - 1) * pageCount;
		end = currentNo * pageCount;
	}
	
	
	public int getCurrentNo() {
		return currentNo;
	}
	public void setCurrentNo(int currentNo) {
		this.currentNo = currentNo;
		//重新计算位置
		countPosition();
		
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getBegin() {
		return begin;
	}
	public void setBegin(int begin) {
		this.begin = begin;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}


	public int getTotalCount() {
		return totalCount;
	}


	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		
		//计算总页数
		totalPageCount = totalCount / pageCount;
		
		//有剩余
		if(totalCount % pageCount > 0){
			totalPageCount += 1;
		}
		
		//是否有下一页
		if(currentNo != totalPageCount ){
			hasNext = true;
		}
		
		//是否有上一页
		if(currentNo != 1){
			hasPrevious = true;
		}
	}


	public int getTotalPageCount() {
		return totalPageCount;
	}


	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}
	
	public boolean getHasNext() {
		return hasNext;
	}

	public void setHasNext(boolean hasNext) {
		this.hasNext = hasNext;
	}

	public boolean getHasPrevious() {
		return hasPrevious;
	}

	public void setHasPrevious(boolean hasPrevious) {
		this.hasPrevious = hasPrevious;
	}


	public String getPath() {
		return path;
	}


	public void setPath(String path) {
		this.path = path;
	}
	
	
	

}
