package com.jnshu.utils;

import com.jnshu.mapper.UserMapper;
import com.jnshu.pojo.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.servlet.http.Cookie;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/applicationContext-*.xml")
public class JJWTUtilTest {
    @Autowired
    UserMapper userMapper;
    @Test
    public void createJwt() throws UnsupportedEncodingException {
        Map<String,Object> payload=new HashMap<String, Object>();
        DesUtils desUtils=new DesUtils();
        User user=userMapper.select("hjh7210332");
        String id=user.getId()+"";
        String loginTime=System.currentTimeMillis()+"";
        String username=user.getUsername();
        id=desUtils.encrypt(id);
        username=desUtils.encrypt(username);
        loginTime=desUtils.encrypt(loginTime);
        payload.put("id",id);
        payload.put("username",username);
        payload.put("loginTime",loginTime);
        String token=JJWTUtil.createJwt(payload);
        CookieUtil.addCookie("token",token);
        System.out.println(token);
        Map<String,Object> unpayload=new HashMap<String, Object>();
        unpayload=JJWTUtil.parseJwt(token);
        String uid=desUtils.decrypt(unpayload.get("id").toString());
        String username1=desUtils.decrypt(unpayload.get("username").toString());
        String loginTime1=desUtils.decrypt(unpayload.get("loginTime").toString());
        System.out.println(uid);
        System.out.println(username1);
        System.out.println(loginTime1);

    }

    @Test
    public void parseJwt() {
    }
}