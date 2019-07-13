package com.jnshu.service.serviceImpl;

import com.jnshu.pojo.User;
import com.jnshu.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/applicationContext-*.xml")
public class UserServiceImplTest {
    @Autowired
    UserService userService;

    @Test
    public void insert() {
    }

    @Test
    public void hasUserName() {
    }

    @Test
    public void isTrue() {
    }

    @Test
    public void setToken() throws Exception {
        User user=new User();
        user.setId(5);
        userService.setToken(user);
    }

    @Test
    public void passwordMatch() {
        String password="7210332..";
        User user=new User();
        user.setPassword("d87108115496833e9780f72c223834d0fb9215d23fe1dc0a");
        System.out.println(userService.passwordMatch(password,user));
    }

    @Test
    public void uploadPhoto() {
    }

    @Test
    public void getPhoto() {
    }
}