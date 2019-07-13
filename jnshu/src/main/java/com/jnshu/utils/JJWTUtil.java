package com.jnshu.utils;


import io.jsonwebtoken.JwtBuilder;
import io.jsonwebtoken.Jwts ;
import io.jsonwebtoken.SignatureAlgorithm ;


import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.tomcat.util.codec.binary.Base64;
/**
 * JWT工具类，生成token，解析token
 *
 * @author
 * */
@Component
public class JJWTUtil {
    private static final String JWT_KEY = "www.jnshu.com";
    public static String createJwt(Map<String,Object> payload) {
        // Token默认过期时间10分钟
        Date expiration = new Date(System.currentTimeMillis() + 6000 * 1000);
        JwtBuilder builder = Jwts.builder()
                .setClaims(payload)
                .setExpiration(expiration)
                .signWith(SignatureAlgorithm.HS256,JWT_KEY);
        return builder.compact();
    }

    public static Map parseJwt(String token) {
        try {
            return Jwts.parser()
                    .setSigningKey(JWT_KEY)
                    .parseClaimsJws(token)
                    .getBody();
        } catch (Exception e) {
            return null;
        }
    }
}