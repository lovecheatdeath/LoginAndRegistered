package com.jnshu.service.serviceImpl;

import com.jnshu.mapper.UserMapper;
import com.jnshu.pojo.User;
import com.jnshu.service.UserService;
import com.jnshu.utils.*;
import org.apache.commons.codec.digest.Md5Crypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import org.springframework.web.multipart.MultipartFile;
import com.jnshu.utils.FileUpLoad;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;
    @Autowired
    @Qualifier("fileUpLoad")
    FileUpLoad upLoad;
    @Override
    public void insert(User user, BindingResult error) {
        if (error != null && error.hasErrors()) {
            String msg = Objects.requireNonNull(error.getFieldError()).getDefaultMessage();
            throw new IllegalArgumentException(msg);
        }
        Boolean nameBeUsed = hasUserName(user.getUserid());
//        Boolean phoneBeUsed = hasUsrName(user.getPhone());
//        Boolean emailBeUsed = hasUsrName(user.getEmail());
        if (nameBeUsed) {
            throw new IllegalArgumentException("Beused.user.name");
        }
        Long currentTime=System.currentTimeMillis();
        String pwdIn = MD5Util.generate(user.getPassword());
        user.setPassword(pwdIn);
        user.setUsername(user.getUsername());
        user.setCreateAt(currentTime);
        user.setUpdateAt(currentTime);
        userMapper.insert(user);
    }

    @Override
    public Boolean hasUserName(String value) {
        return userMapper.select(value) != null;
    }

    @Override
    public User isTrue(String value, String password) {
        User user = userMapper.select(value);
        if (user == null) {
            throw new IllegalArgumentException("Input.user.null");
        }
        Boolean isMatch = passwordMatch(password, user);
        System.out.println(password);
        if (!isMatch) {
            throw new IllegalArgumentException("Input.user.match");
        }
        return user;
    }

    @Override
    public Cookie setToken(User user) throws Exception {
        DesUtils desUtils=new DesUtils();
        String payload =null;
        Long loginTime=System.currentTimeMillis();
        payload=user.getId()+""+loginTime;
        System.out.println(payload);
        try {
            desUtils.encrypt(payload);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        String jwt = JwtTokenUtil.createToken(payload);
        System.out.println(jwt);
        return CookieUtil.addCookie("token", jwt);
    }
    @Override
    public Cookie jjwtSetToken(User user){
        DesUtils desUtils=new DesUtils();
        Map<String ,Object> payload =new HashMap<String, Object>();
        String loginTime=System.currentTimeMillis()+"";
        String id=user.getId()+"";
        String username=user.getUsername();
        System.out.println(payload);
        try {
            id=desUtils.encrypt(id);
            username=desUtils.encrypt(username);
            loginTime=desUtils.encrypt(loginTime);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        payload.put("id",id);
        payload.put("username",username);
        payload.put("loginTime",loginTime);
        String jwt = JJWTUtil.createJwt(payload);
        System.out.println(jwt);
        return CookieUtil.addCookie("token", jwt);
    }
    @Override
    public Boolean passwordMatch(String password, User user) {
//        String pwdIn = MD5Util.generate(password);
//        System.out.println(pwdIn);
        return MD5Util.verify(password,user.getPassword());
    }
    @Override
    public void uploadPhoto(Cookie[] cookies, MultipartFile photo, HttpServletRequest request)throws Exception{
        String id = CookieUtil.getUser(cookies);
        String imagePath=null;
        imagePath =FileUpLoad.fileUpLoad(photo,request);
        userMapper.setPhoto(Integer.parseInt(id) ,imagePath);
    }

    @Override
    public String getPhoto(Cookie[] cookies) {
        String id = CookieUtil.getUser(cookies);
        String url = userMapper.getPhoto(Integer.parseInt(id));
        return url;
    }
}
