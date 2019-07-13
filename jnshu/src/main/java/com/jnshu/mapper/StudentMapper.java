package com.jnshu.mapper;

import com.jnshu.pojo.Student;
        import org.apache.ibatis.annotations.Param;

        import java.util.List;

public interface StudentMapper {
    Boolean deleteByPrimaryKey(Integer id);

    Integer insert(Student student);

    int insertSelective(Student record);

    Student selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);

    List upLoadStudent(@Param("status")Integer status);

    Boolean update(@Param("id") Integer id,
                   @Param("key") String key,
                   @Param("value") Object value,
                   @Param("updateTime") Long updateTime);

    Boolean delete(Integer id);
}