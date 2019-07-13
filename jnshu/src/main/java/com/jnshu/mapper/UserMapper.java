package com.jnshu.mapper;

import com.jnshu.pojo.User;
import org.apache.ibatis.annotations.Param;

import javax.servlet.http.Cookie;

public interface UserMapper {
    Boolean deleteByPrimaryKey(Integer id);

    void insert(User user);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    User select(String value);

    String getPhoto(Integer id);

    void setPhoto(@Param("id") Integer id, @Param("photo") String photo);
}