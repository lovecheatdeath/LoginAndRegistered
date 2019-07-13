package com.jnshu.service.serviceImpl;

import com.jnshu.mapper.StudentMapper;
import com.jnshu.pojo.Student;
import com.jnshu.service.StudentService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    StudentMapper studentMapper;

    @Override
    public List upLoadStudent(@Param("status")Integer status){
        return studentMapper.upLoadStudent(status);
    }

    @Override
    public Boolean deleteStudent(@Param("id")Integer id){
        return studentMapper.deleteByPrimaryKey(id);
    }

    @Override
    public Integer insertStudent(Student student){
        Long createTime=System.currentTimeMillis();
        student.setCreateAt(createTime);
        return studentMapper.insert(student);
    }

    @Override
    public Boolean updateStudent(@Param("id") Integer id,
                                 @Param("key") String key,
                                 @Param("value") Object value
                                 ){
        Long updateTime=System.currentTimeMillis();
        return studentMapper.update(id,key,value,updateTime);
    }

}
