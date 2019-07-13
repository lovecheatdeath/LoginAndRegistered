package com.jnshu.service.serviceImpl;

import com.jnshu.mapper.ProfessionMapper;
import com.jnshu.pojo.Profession;
import com.jnshu.service.ProfessionService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class ProfessionServiceImpl implements ProfessionService {
    @Autowired
    ProfessionMapper professionMapper;

    @Override
    public List<Map<Integer, List>> upLoadProfession(List type){
        List model=new ArrayList();
        Profession profession=new Profession();
        Map<Integer,List> map=new HashMap<Integer, List>();
        for(int i=0;i<type.size();i++){
            List typeList=professionMapper.upLoadProfession((Integer) type.get(i));
            map.put((Integer) type.get(i),typeList);
        }
        model.add(map);
        return model;
    }

    @Override
    public Map<Integer,List> upLoadProfessions(@Param("status")Integer status){
        List alltype=professionMapper.distinctType(status);
         Map<Integer,List> map=new HashMap<Integer, List>();
         for(int i=0;i<alltype.size();i++){
             Profession profession=(Profession) alltype.get(i);
             List type=professionMapper.professionByType(profession.getType());
             map.put(profession.getType(),type);

         }
         return map;
    }

    @Override
    public List upLoadProfession(@Param("status")Integer status){
        return professionMapper.upLoadProfession(status);
    }
}
