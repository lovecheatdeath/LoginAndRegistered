package com.jnshu.utils;

import javax.servlet.http.Cookie;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class CookieUtil {

    public static Cookie addCookie(String key, String value) {
        Cookie cookie = new Cookie(key, value);
        cookie.setMaxAge(10 * 60);
        cookie.setPath("/");
        return cookie;
    }

    public static Cookie killCookie(String key) {
        Cookie cookie = new Cookie(key, null);
        cookie.setMaxAge(0);
        cookie.setPath("/");
        return cookie;
    }

    public static Boolean isLogin(Cookie[] cookies) {
        if (cookies == null) {
            return false;
        } else {
            return Arrays.stream(cookies)
                    .filter(cookie -> "token".equals(cookie.getName()))
                    .map(Cookie::getValue)
                    .anyMatch(CookieUtil::isTrueToken);
        }
    }


    public static Map getTokenMap(Cookie[] cookies) {
        List<String> jwt = Arrays.stream(cookies)
                .filter(cookie -> "token".equals(cookie.getName()))
                .map(Cookie::getValue).collect(Collectors.toList());
        return getTokenMap(jwt.get(0));
    }

    private static Map getTokenMap(String token) {
        return JJWTUtil.parseJwt(token);
    }

    public static String getUser(Cookie[] cookies) {
        Map userMap = getTokenMap(cookies);
        return userMap.get("username").toString();
    }

    public static Boolean isTrueToken(String token) {
        return getTokenMap(token) != null;
    }
}
