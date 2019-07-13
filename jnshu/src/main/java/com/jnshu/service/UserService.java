package com.jnshu.service;


import com.jnshu.pojo.User;
import org.springframework.validation.BindingResult;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public interface UserService {
    void insert(User user, BindingResult error);

    Boolean hasUserName(String name);

    User isTrue(String userid, String password);

    Boolean passwordMatch(String password, User user);

    Cookie setToken(User user) throws Exception;

    Cookie jjwtSetToken(User user);

    void uploadPhoto(Cookie[] cookies, MultipartFile photo, HttpServletRequest request)throws Exception;

    String getPhoto(Cookie[] cookies);
}
