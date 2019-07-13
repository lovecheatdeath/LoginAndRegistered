package com.jnshu.utils;


import java.io.UnsupportedEncodingException;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.interfaces.Claim;
import com.auth0.jwt.interfaces.DecodedJWT;
import org.springframework.stereotype.Component;

@Component
public class JwtTokenUtil {

    public static String SECRET = "SDFEEdfdeFDRE";


    public static String createToken(String payload) throws Exception {
        //签发时间
        Date istDate = new Date();

        //设置过期时间
        Calendar nowTime = Calendar.getInstance();
        nowTime.add(Calendar.MINUTE, 1);
        Date expiresDate = nowTime.getTime();

        Map<String, Object> map = new HashMap<String, Object>();
        map.put("alg", "HS256");
        map.put("typ", "JWT");

        String token = JWT.create()
                .withHeader(map)
                .withClaim("payload",payload)
                .withExpiresAt(expiresDate)
                .withIssuedAt(istDate)
                .sign(Algorithm.HMAC256(SECRET));

        return token;
    }


    public static Map<String, Claim> verifyToken(String token) {
        JWTVerifier verifier = null;
        try {
            verifier = JWT.require(Algorithm.HMAC256(SECRET)).build();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        DecodedJWT jwt = null;
        try {
            jwt = verifier.verify(token);
        } catch (Exception e) {
            throw new RuntimeException("凭证过期！");
        }

        return jwt.getClaims();
    }



    public static void main(String[] args) throws Exception {
        Integer id=new Integer(1);
        Long loginTime=new Long(2354134543213L);
        String payload=id+""+loginTime;
        String token = JwtTokenUtil.createToken(payload);

        System.out.println(token);
        //正常测试
        Map<String, Claim> verifyToken = JwtTokenUtil.verifyToken(token);
        String asString = verifyToken.get("payload").asString();
        System.out.println(asString);

        //过期测试
        token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwYXlsb2FkIjoiMTIzNTQxMzQ1NDMyMTMiLCJleHAiOjE1NjI3Mjg5NTMsImlhdCI6MTU2MjcyODg5M30.qleN3gK5vxywlX5AL44cBtSWL4Y2LYTS_UQynv4YeJY";
        Map<String, Claim> verifyToken2 = JwtTokenUtil.verifyToken(token);
    }
}
