package com.jnshu.service.serviceImpl;

import com.jnshu.service.StudentService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/applicationContext-*.xml")
public class StudentServiceImplTest {
    @Autowired
    StudentService studentService;

    @Test
    public void upLoadStudent() {
        Integer status=1;
        System.out.println(studentService.upLoadStudent(status));
    }

    @Test
    public void deleteStudent() {
    }

    @Test
    public void insertStudent() {
    }

    @Test
    public void updateStudent() {
    }
}