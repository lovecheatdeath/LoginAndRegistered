package com.jnshu.service;

import com.jnshu.pojo.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentService {
    List upLoadStudent(@Param("status")Integer status);

    Boolean deleteStudent(@Param("id")Integer id);

    Integer insertStudent(Student student);

    Boolean updateStudent(@Param("id") Integer id,
                          @Param("key") String key,
                          @Param("value") Object value
                         );
}
