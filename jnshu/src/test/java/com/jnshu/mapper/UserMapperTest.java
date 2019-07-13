package com.jnshu.mapper;

import junit.framework.TestCase;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/applicationContext-dao.xml")
public class UserMapperTest extends TestCase {

    @Autowired
    UserMapper userMapper;


    @Test
    public void get(){
    System.out.println(userMapper.select("hjh7210332"));

    }


    @Test
    public void insert(){


    }


    @Test
    public void getPhoto(){
        System.out.println(userMapper.getPhoto(1));

    }


    @Test
    public void setPhoto(){


    }
}