package com.oracle.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.oracle.entity.User;
import com.oracle.util.Pager;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    User selectByUserName(String userName);
    
    List<User> selectAll();
    
    List<User> selectByPager(@Param("user")User user,@Param("pager")Pager pager);
    
    List<User> select(User user);
    
    int selectCount(@Param("user")User user);
}