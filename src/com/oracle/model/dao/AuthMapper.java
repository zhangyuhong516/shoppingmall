package com.oracle.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.oracle.entity.Auth;
import com.oracle.entity.User;
import com.oracle.util.Pager;

public interface AuthMapper {
    int deleteByPrimaryKey(Integer authId);

    //注意Oracle是根据序列进行（实现）自增的，Oracle没有自增的说法
    int insert(Auth record);

    int insertSelective(Auth record);

    Auth selectByPrimaryKey(Integer authId);
    
    //返回一个列表的权限
    List<Auth> selectAllAuth();

    int updateByPrimaryKeySelective(Auth record);

    int updateByPrimaryKey(Auth record);
    
    List<Auth> selectByPager(@Param("pager")Pager pager);
    
    int selectCount();
}