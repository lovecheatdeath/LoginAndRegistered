package com.jnshu.interceptor;

import com.jnshu.utils.CookieUtil;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class loginInterceptor extends HandlerInterceptorAdapter {
    private Logger logger = LogManager.getLogger(loginInterceptor.class);

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        Cookie[] cookies = request.getCookies();

        Boolean isLogin = CookieUtil.isLogin(cookies);

        if (isLogin) {
            logger.info("token passed");
            return true;
        } else {
            logger.info("token unexpect");
            request.getRequestDispatcher("/loginPage").forward(request,response);
            return false;
        }
    }
}
