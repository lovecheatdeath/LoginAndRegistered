package com.jnshu.mapper;

import com.jnshu.pojo.Profession;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProfessionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Profession record);

    int insertSelective(Profession record);

    Profession selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Profession record);

    int updateByPrimaryKey(Profession record);

    List upLoadProfession(@Param("status")Integer status);

    List distinctType(@Param("status")Integer status);

    List professionByType(@Param("type")Integer type);
}