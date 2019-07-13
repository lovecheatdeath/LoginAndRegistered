package com.jnshu.service;

import com.jnshu.pojo.Profession;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface ProfessionService {
    List<Map<Integer,List>> upLoadProfession(List type);

    List upLoadProfession(@Param("status")Integer status);

    Map<Integer,List> upLoadProfessions(@Param("status")Integer status);

}
